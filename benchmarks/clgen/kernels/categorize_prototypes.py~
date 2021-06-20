#!/usr/bin/env python3

import glob
import re
import typing

import numpy as np
from pycparser.c_ast import FileAST
from pycparser.c_ast import IdentifierType
from pycparser.c_ast import NodeVisitor
from pycparser.c_ast import PtrDecl
from pycparser.c_ast import Struct
from pycparser.plyparser import ParseError
from pycparserext.ext_c_parser import OpenCLCParser

prototypes = [
    '__kernel void A(const __global float4* a, __global float4* b, __global float4* c, float d)',
    '__kernel void A(__global float* a, __global float* b, __global float* c)',
    '__kernel void A(__global float2* a, __global float2* b, __global float2* c, int d)',
    '__kernel void A(__global const float* a, __global const float* b, __global float* c, const int d, const int e)',
    '__kernel void A(__global float* a, __global float* b, const unsigned int c)',
    '__kernel void A(__global char* a, __global char* b)',
    '__kernel void A(__global float4* a, __global float4* b, __global float4* c, __global float4* d, float e)',
    '__kernel void A(__global float* a, __global float* b, const int c)',
    '__kernel void A(__global float* a, __global float* b, __global int* c)',
    '__kernel void A(__global float4* a, __global float4* b)',
    '__kernel void A(const int a, __global int* b, __global int* c)',
    '__kernel void A(__global int2* a, __global int* b, __global int* c, int d)',
    '__kernel void A(__global float* a, __global float* b, __global float* c, const int d)',
    '__kernel void A(__global float* a, __global float* b, __global float* c, float d)',
    '__kernel void A(__global float* a, __global float* b, __global int* c, __global int* d)',
    '__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, const int e)',
    '__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, __global float* e, __global int* f)',
    '__kernel void A(__global float* a, __global float* b)',
    '__kernel void A(int a, global float* b, global float* c, global float* d)',
    '__kernel void A(__global float4* a, __global float4* b, __global float* c)',
    '__kernel void A(__global const float* a, __global const float* b, __global float* c, float d)',
    '__kernel void A(__global float* a, __global float* b, __global uchar* c)',
    '__kernel void A(__global float3* a, __global float2* b, __global float2* c, int d)',
    '__kernel void A(__global int* a)',
    '__kernel void A(__global float* a, __constant float* b, __global float* c, __global float* d)',
    '__kernel void A(__global float* a, __global float* b, __global float* c, __global int* d)',
    '__kernel void A(__global float* a, __constant float* b, __global int* c, const int d)',
    '__kernel void A(__global float* a, __global float* b, __global float* c, const uint d)',
    '__kernel void A(__global float4* a, __global float4* b, int c, int d)',
    '__kernel void A(__global int* a, __global int* b)',
    '__kernel void A(__global float4* a, __global float4* b, __global float4* c, __global float4* d, __global float4* e, float f)',
    '__kernel void A(__global float4* a, __global float4* b, uint c)',
    '__kernel void A(__global float2* a, __global float* b, const unsigned int c)',
    '__kernel void A(__global float* a, __global float* b, __global float* c, __global float* d, __global float* e)']

# Private OpenCL parser instance.
_OPENCL_PARSER = OpenCLCParser()


class KernelArg(object):
  """OpenCL kernel argument representation.
  TODO(cec): Attribute 'numpy_type' should depend on the properties of the
    device. E.g. not all devices will have 32 bit integer widths.
  """

  def __init__(self, ast):
    self.ast = ast

    # Determine pointer type.
    self.is_pointer = isinstance(self.ast.type, PtrDecl)
    self.address_space = "private"

    self.name = self.ast.name if self.ast.name else ""
    self.quals = self.ast.quals
    if len(self.quals):
      self.quals_str = " ".join(self.quals) + " "
    else:
      self.quals_str = ""

    # Determine type name.
    try:
      if isinstance(self.ast.type.type, IdentifierType):
        type_names = self.ast.type.type.names
      elif isinstance(self.ast.type.type.type, Struct):
        type_names = ["struct", self.ast.type.type.type.name]
      else:
        type_names = self.ast.type.type.type.names
    except AttributeError as e:  # e.g. structs
      raise ValueError(
        f"Unsupported data type for argument: '{self.name}'"
      ) from e

    self.typename = " ".join(type_names)
    self.bare_type = self.typename.rstrip("0123456789")

    # Get address space.
    if self.is_pointer:
      address_quals = []
      if "local" in self.ast.quals:
        address_quals.append("local")

      if "__local" in self.ast.quals:
        address_quals.append("local")

      if "global" in self.ast.quals:
        address_quals.append("global")

      if "__global" in self.ast.quals:
        address_quals.append("global")

      if "constant" in self.ast.quals:
        address_quals.append("constant")

      if "__constant" in self.ast.quals:
        address_quals.append("constant")

      err_prefix = (
        "Pointer argument " f"'{self.quals_str}{self.typename} *{self.name}'"
      )
      if len(address_quals) == 1:
        self.address_space = address_quals[0]
      else:
        raise Exception

    self.is_vector = self.typename[-1].isdigit()
    self.is_const = "const" in self.quals or self.address_space == "constant"

    if self.is_vector:
      m = re.search(r"([0-9]+)\*?$", self.typename)
      self.vector_width = int(m.group(1))
    else:
      self.vector_width = 1

  @property
  def numpy_type(self):
    """Get the numpy equivalent for the argument."""
    try:
      return NUMPY_TYPES[self.bare_type]
    except KeyError:
      supported_types_str = ",".join(sorted(NUMPY_TYPES.keys()))
      raise OpenCLValueError(
        f"""\
Unsupported type '{self.typename}' for argument \
'{self.quals_str}{self.typename} {self.name}'. \
Supported types are: {{{supported_types_str}}}"""
      )

  def __repr__(self):
    s = self.quals if len(self.quals) else []
    s.append(self.typename)
    if self.is_pointer:
      s.append("*")
    if self.name:
      s.append(self.name)
    return " ".join(s)


class ArgumentExtractor(NodeVisitor):
  def __init__(self, *args, **kwargs):
    super(ArgumentExtractor, self).__init__(*args, **kwargs)
    self.kernel_count = 0
    self._args: typing.List[KernelArg] = []
    self.name = None

  def visit_FuncDef(self, node):
    # Only visit kernels, not all functions.
    if "kernel" in node.decl.funcspec or "__kernel" in node.decl.funcspec:
      self.kernel_count += 1
      self.name = node.decl.name
    else:
      return

    # Function may not have arguments
    if node.decl.type.args:
      for param in node.decl.type.args.params:
        self._args.append(KernelArg(param))

  @property
  def args(self) -> typing.List[KernelArg]:
    """Get the kernels for the kernel."""
    return self._args


def ParseSource(src: str) -> FileAST:
  try:
    ast = _OPENCL_PARSER.parse(src)
    children = [x[1] for x in ast.children() if not isinstance(x[1], list)]
    new_ast = FileAST(ext=children, coord=0)
    return new_ast
  except (ParseError, AssertionError) as e:
    raise Exception


def GetKernelArguments(src: str) -> typing.List[KernelArg]:
  visitor = ArgumentExtractor()
  visitor.visit(ParseSource(src))
  return visitor.args


def check_prototypes():
    not_found = []
    for fname in glob.glob('*.cl'):
        with open(fname) as f:
            found = False
            line = f.readline().strip()
            for prototype in prototypes:
                if line.startswith(prototype):
                    found = True
                    break

            if not found:
                not_found.append(fname)

    all_args = set()
    for fname in not_found:
        with open(fname) as f:
            src = '\n'.join(f.readlines())
            all_args.add(str(GetKernelArguments(src)))

    for args in all_args:
        print(args)

check_prototypes()
