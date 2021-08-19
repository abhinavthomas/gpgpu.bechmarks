#include <helper.h>

_CLC_DEF _CLC_OVERLOAD size_t get_group_id(uint dim) {
  switch (dim) {
  case 0:  return __nvvm_read_ptx_sreg_ctaid_x();
  case 1:  return __nvvm_read_ptx_sreg_ctaid_y();
  case 2:  return __nvvm_read_ptx_sreg_ctaid_z();
  default: return 0;
  }
}

_CLC_DEF _CLC_OVERLOAD size_t get_local_size(uint dim) {
  switch (dim) {
  case 0:  return __nvvm_read_ptx_sreg_ntid_x();
  case 1:  return __nvvm_read_ptx_sreg_ntid_y();
  case 2:  return __nvvm_read_ptx_sreg_ntid_z();
  default: return 0;
  }
}

_CLC_DEF _CLC_OVERLOAD size_t get_local_id(uint dim) {
  switch (dim) {
  case 0:  return __nvvm_read_ptx_sreg_tid_x();
  case 1:  return __nvvm_read_ptx_sreg_tid_y();
  case 2:  return __nvvm_read_ptx_sreg_tid_z();
  default: return 0;
  }
}

_CLC_DEF _CLC_OVERLOAD size_t get_num_groups(uint dim) {
  switch (dim) {
  case 0:  return __nvvm_read_ptx_sreg_nctaid_x();
  case 1:  return __nvvm_read_ptx_sreg_nctaid_y();
  case 2:  return __nvvm_read_ptx_sreg_nctaid_z();
  default: return 0;
  }
}

_CLC_DEF _CLC_OVERLOAD size_t get_global_id(uint dim) {
  return get_group_id(dim) * get_local_size(dim) + get_local_id(dim);
}
