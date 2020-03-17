#ifndef GH_PPC_FI_H
#define GH_PPC_FI_H

/* Compilers may use another function within the assert macro to exit the 
 * program. QAC thus does not see an "exit" function and assumes the 
 * function returns, which it does not.
 * The below pragma tells QAC the compiler supplied function does not
 * return.
 */

/* examples - GCC, ICC, BCC 3.1, BCC 5.5, CYGWIN gcc, Watcom 1.6 */
#pragma PRQA_NO_RETURN __assert_fail
#pragma PRQA_NO_RETURN __assert_perror_fail
#pragma PRQA_NO_RETURN __assert

/* SDCC, BCC 5.5, Digital Mars DM 8.4, LCC, Watcom 1.6, Fujitsu F2MM,FR */
#pragma PRQA_NO_RETURN _assert

/* HI-TECH PCCLite */
#pragma PRQA_NO_RETURN _fassert

/* DJGPP, D.J.Delorie gcc DOS port */
#pragma PRQA_NO_RETURN __dj_assert

/* Watcom 1.6, MSVS 08 */
#pragma PRQA_NO_RETURN _wassert
#pragma PRQA_NO_RETURN __wassert
#pragma PRQA_NO_RETURN _assert99
#pragma PRQA_NO_RETURN _wassert99
#pragma PRQA_NO_RETURN __assert99
#pragma PRQA_NO_RETURN __wassert99

/* Renesas M32R compiler */
#pragma PRQA_NO_RETURN _Assert

/* NEC 78K0 series 16bit compiler */
#pragma PRQA_NO_RETURN __assertfail
#pragma PRQA_NO_RETURN __assertfail_n
#pragma PRQA_NO_RETURN __assertfail_f


/* Depending on the code that the compiler maker uses within the assert macro,
 * QAC may issue warnings. It is also possible that when the NDEBUG macro is used
 * to suppress the assertion code, QAC may issue a "no side-effects" warning.
 * To eliminate these, we turn off all warnings for the assert macro.
 */
#pragma PRQA_MACRO_MESSAGES_OFF "assert"


/* Any other items that may be required in a "force-include" file should be placed below. */

/* intrinsics */
void __DI(void);
void __EI(void);
int __builtin_va_alist;
int __builtin_va_arg_incr();
int __va_aargnum();
int __va_ansiarg;
int __va_dargnum();
int __va_iargnum();
int __va_intreg;
int *__va_stkarg;

unsigned int __CLZ32(unsigned int);
unsigned int __GETSR(void);
int __MULSH(int, int);
unsigned int __MULUH(unsigned int, unsigned int);
void __PUTSR(unsigned int);
void __SETSR(unsigned int);

#else
#error "Multiple include"
#endif  /* ifndef GH_PPC_FI_H */

