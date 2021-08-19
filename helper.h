#ifndef _HELPER_H
#define _HELPER_H

#define _CLC_OVERLOAD __attribute__((overloadable))
#define _CLC_DECL
#define _CLC_INLINE __attribute__((always_inline)) inline
#define _CLC_DEF __attribute__((always_inline))

_CLC_DEF _CLC_OVERLOAD size_t get_group_id(uint dim);
_CLC_DEF _CLC_OVERLOAD size_t get_local_size(uint dim);
_CLC_DEF _CLC_OVERLOAD size_t get_local_id(uint dim);
_CLC_DEF _CLC_OVERLOAD size_t get_num_groups(uint dim);
_CLC_DEF _CLC_OVERLOAD size_t get_global_id(uint dim);

#endif
