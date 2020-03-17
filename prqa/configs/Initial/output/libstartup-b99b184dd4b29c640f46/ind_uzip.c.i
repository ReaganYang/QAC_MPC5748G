/*
 * E:/Reagan/code/QAC_code/QAC_MPC5748G/prqa/configs/Initial/config/DATA/GHS_MULTI614_PPC_201254_standalone_GenericPPC_C/Stub/prlforceinclude/GH_ppc.h
 */
/*    53 */ void __DI ( void ) ; 
/*    54 */ void __EI ( void ) ; 
/*    55 */ int __builtin_va_alist ; 
/*    56 */ int __builtin_va_arg_incr ( ) ; 
/*    57 */ int __va_aargnum ( ) ; 
/*    58 */ int __va_ansiarg ; 
/*    59 */ int __va_dargnum ( ) ; 
/*    60 */ int __va_iargnum ( ) ; 
/*    61 */ int __va_intreg ; 
/*    62 */ int * __va_stkarg ; 
/*    64 */ unsigned int __CLZ32 ( unsigned int ) ; 
/*    65 */ unsigned int __GETSR ( void ) ; 
/*    66 */ int __MULSH ( int , int ) ; 
/*    67 */ unsigned int __MULUH ( unsigned int , unsigned int ) ; 
/*    68 */ void __PUTSR ( unsigned int ) ; 
/*    69 */ void __SETSR ( unsigned int ) ; 
/*
 * D:/Documents/My Projects/MPC5748G_demo1/tgt/libstartup/ind_startup.h
 */
/*    23 */     typedef int ptrdiff_t ; 
/*    34 */     typedef unsigned int syze_t ; 
/*    35 */     typedef signed int signed_size_t ; 
/*    48 */ extern void * memcpy ( void * s1 , const void * s2 , syze_t n ) ; 
/*    49 */ extern void * memset ( void * s , int c , syze_t n ) ; 
/*
 * D:/Documents/My Projects/MPC5748G_demo1/tgt/libstartup/ind_uzip.c
 */
/*    37 */ syze_t __ghs_decompress ( void * dst , const void * src , syze_t n ) 
/*    38 */ { 
/*    39 */     int r , c ; 
/*    40 */     unsigned int flags ; 
/*    42 */     const unsigned char * s = ( const unsigned char * ) src ; 
/*    43 */     unsigned char * t = ( unsigned char * ) dst ; 
/*    45 */     const unsigned char * s_stop = s + n ; 
/*    46 */     unsigned char * t_start = t ; 
/*    49 */     r = 4096 - 18 ; 
/*    50 */     flags = 0 ; 
/*    51 */     while ( s < s_stop ) { 
/*    52 */         if ( ( ( flags >>= 1 ) & 0x100 ) == 0 ) { 
/*    55 */             c = * s ++ ; 
/*    58 */             flags = c | 0xff00 ; 
/*    59 */         } 
/*    60 */         if ( flags & 1 ) { 
/*    62 */             c = * s ++ ; 
/*    63 */             * t ++ = ( char ) c ; 
/*    64 */             r = ( ( r + 1 ) & ( 4096 - 1 ) ) ; 
/*    65 */         } else { 
/*    69 */             unsigned char * pattern ; 
/*    70 */             int patoff , patlen , i ; 
/*    72 */             patoff = * s ++ ; 
/*    73 */             patlen = * s ++ ; 
/*    74 */             patoff |= ( ( patlen & 0xf0 ) << 4 ) ; 
/*    75 */             patlen = ( patlen & 0x0f ) + 2 + 1 ; 
/*    77 */             pattern = t - ( r - patoff ) ; 
/*    78 */             if ( r <= patoff ) 
/*    79 */                 pattern -= 4096 ; 
/*    86 */             for ( i = 0 ; ( pattern < t_start || pattern >= t ) && ( i < patlen ) ; 
/*    87 */                         i ++ ) { 
/*    88 */                 * t ++ = 0 ; 
/*    89 */                 pattern ++ ; 
/*    90 */             } 
/*    93 */             for ( ; i < patlen ; i ++ ) { 
/*    94 */                 * t ++ = * pattern ++ ; 
/*    95 */             } 
/*    96 */             r = ( ( r + patlen ) & ( 4096 - 1 ) ) ; 
/*    97 */         } 
/*    98 */     } 
/*   100 */     return t - ( unsigned char * ) dst ; 
/*   101 */ } 
