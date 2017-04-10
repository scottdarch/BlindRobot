
#ifndef SC_TYPES_H_
#define SC_TYPES_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <stdbool.h>
#include <stdint.h>

#define sc_string char*

typedef bool sc_boolean;
typedef int_fast8_t sc_short;
typedef uint_fast8_t sc_ushort;
typedef int8_t sc_integer;
typedef uint8_t sc_uinteger;

typedef void* sc_eventid;

typedef intptr_t sc_intptr_t;

#ifdef __cplusplus
}
#endif

#ifndef null
#ifdef __cplusplus
#define null 0
#else
#define null ((void*)0)
#endif
#endif

#define bool_true true
#define bool_false false

#endif /* SC_TYPES_H_ */
