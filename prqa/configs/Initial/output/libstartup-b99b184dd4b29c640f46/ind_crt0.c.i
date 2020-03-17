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
 * D:/Documents/My Projects/MPC5748G_demo1/tgt/libstartup/ind_crt0.c
 */
/*   135 */ extern void __ghsbegin_picbase ( void ) ; 
/*   138 */ extern const char __ghsbegin_robase [ ] ; 
/*   139 */ extern char __ghsbegin_pidbase [ ] ; 
/*   176 */   typedef void rodata_ptr ( void ) ; 
/*   183 */ typedef enum { ABS_SEC = 0 , PIC_SEC , PIR_SEC , PID_SEC } SECTION_BASE ; 
/*   186 */ extern rodata_ptr __ghsbegin_secinfo ; 
/*   211 */ typedef syze_t caddr_t ; 
/*   213 */ typedef void ( crt1_t ) ( int argc , char * argv [ ] , char * envp [ ] ) ; 
/*   214 */ typedef void * ( memcpy_t ) ( void * s1 , const void * s2 , syze_t n ) ; 
/*   215 */ typedef void * ( memset_t ) ( void * s , int c , syze_t n ) ; 
/*   216 */ typedef syze_t ( decompress_t ) ( void * t , const void * s , syze_t n ) ; 
/*   217 */ typedef void ( boardcachesync_t ) ( void * s , syze_t n ) ; 
/*   219 */ typedef crt1_t * crt1_fptr_t ; 
/*   220 */ typedef memcpy_t * memcpy_fptr_t ; 
/*   221 */ typedef memset_t * memset_fptr_t ; 
/*   222 */ typedef decompress_t * decompress_fptr_t ; 
/*   223 */ typedef boardcachesync_t * boardcachesync_fptr_t ; 
/*   226 */ extern crt1_t __ghs_ind_crt1 ; 
/*   227 */ extern memset_t memset ; 
/*   228 */ extern memcpy_t memcpy ; 
/*   230 */ extern boardcachesync_t __ghs_board_cache_sync ; 
/*   232 */ extern boardcachesync_t __ghs_undefined_func ; 
/*   244 */ extern memcpy_t __ghs_initmem ; 
/*   247 */ extern decompress_t __ghs_decompress ; 
/*   257 */ extern rodata_ptr __ghsbinfo_clear ; 
/*   259 */ extern rodata_ptr __ghseinfo_clear ; 
/*   262 */ extern rodata_ptr __ghsbinfo_aclear ; 
/*   264 */ extern rodata_ptr __ghsbinfo_copy ; 
/*   266 */ extern rodata_ptr __ghseinfo_copy ; 
/*   268 */ extern rodata_ptr __ghsbinfo_tcopy ; 
/*   271 */ extern rodata_ptr __ghsbinfo_comcopy ; 
/*   274 */ extern rodata_ptr __ghseinfo_comcopy ; 
/*   277 */ extern rodata_ptr __ghsbinfo_comtcopy ; 
/*   279 */ extern rodata_ptr __ghsbegin_fixaddr ; 
/*   281 */ extern rodata_ptr __ghsend_fixaddr ; 
/*   283 */ extern rodata_ptr __ghsbegin_fixtype ; 
/*   285 */ extern rodata_ptr __ghsend_fixtype ; 
/*   307 */ void __ghs_ind_crt0 ( char * baseptrs [ ] , int argc , char * argv [ ] , char * envp [ ] ) 
/*   308 */ { 
/*   309 */     syze_t BASE [ 4 ] ; 
/*   311 */     caddr_t picbase , robase , pidbase ; 
/*   312 */     caddr_t rambootcodestart , rambootcodeend ; 
/*   313 */     caddr_t rombootcodestart , rombootcodeend ; 
/*   315 */     syze_t secinfostart , memsetstart , crt1start ; 
/*   316 */     ptrdiff_t SCIFIX = 0 ; 
/*   328 */     crt1_fptr_t crt1p = & __ghs_ind_crt1 ; 
/*   329 */     memset_fptr_t memsetp = & memset ; 
/*   333 */     memcpy_fptr_t memcpyp = & memcpy ; 
/*   335 */     decompress_fptr_t decompressp = & __ghs_decompress ; 
/*   339 */     boardcachesync_fptr_t boardcachesyncp = & __ghs_board_cache_sync ; 
/*   382 */     secinfostart = ( syze_t ) & __ghsbegin_secinfo ; 
/*   383 */     memsetstart = ( syze_t ) memsetp ; 
/*   384 */     crt1start = ( syze_t ) crt1p ; 
/*   395 */     picbase = ( caddr_t ) baseptrs [ 1 ] ; 
/*   396 */     robase = ( caddr_t ) baseptrs [ 2 ] ; 
/*   397 */     pidbase = ( caddr_t ) baseptrs [ 3 ] ; 
/*   398 */     rambootcodestart = ( caddr_t ) baseptrs [ 4 ] ; 
/*   399 */     rambootcodeend = ( caddr_t ) baseptrs [ 5 ] ; 
/*   400 */     rombootcodestart = ( caddr_t ) baseptrs [ 6 ] ; 
/*   401 */     rombootcodeend = ( caddr_t ) baseptrs [ 7 ] ; 
/*   403 */     BASE [ ABS_SEC ] = 0 ; 
/*   404 */     BASE [ PIC_SEC ] = 0 ; 
/*   405 */     BASE [ PIR_SEC ] = 0 ; 
/*   406 */     BASE [ PID_SEC ] = 0 ; 
/*   411 */     if ( rombootcodestart != rombootcodeend ) { 
/*   412 */         ptrdiff_t ramtoromoffset = ( rombootcodestart - rambootcodestart ) ; 
/*   413 */         if ( secinfostart < rombootcodestart || rombootcodeend <= secinfostart ) { 
/*   415 */             SCIFIX = - ramtoromoffset ; 
/*   416 */         } 
/*   417 */         if ( memsetstart < rombootcodestart || rombootcodeend <= memsetstart ) { 
/*   423 */             memsetp = ( memset_fptr_t ) ( ( char * ) memsetp + ramtoromoffset ) ; 
/*   424 */             memcpyp = ( memcpy_fptr_t ) ( ( char * ) memcpyp + ramtoromoffset ) ; 
/*   425 */             decompressp = ( decompress_fptr_t ) ( ( char * ) decompressp + ramtoromoffset ) ; 
/*   426 */             if ( boardcachesyncp ) 
/*   427 */                 boardcachesyncp = ( boardcachesync_fptr_t ) ( ( char * ) boardcachesyncp + 
/*   428 */                         ramtoromoffset ) ; 
/*   430 */         } 
/*   441 */         if ( ( crt1start < rambootcodestart || rambootcodeend <= crt1start ) && 
/*   442 */                 rambootcodestart != rambootcodeend ) { 
/*   446 */             crt1p = ( crt1_fptr_t ) ( ( char * ) crt1p - ramtoromoffset ) ; 
/*   448 */         } 
/*   449 */     } else { 
/*   450 */         BASE [ PIC_SEC ] = ( ( caddr_t ) __ghsbegin_picbase ) - picbase ; 
/*   451 */         BASE [ PIR_SEC ] = ( ( caddr_t ) __ghsbegin_robase ) - robase ; 
/*   452 */         BASE [ PID_SEC ] = ( ( caddr_t ) __ghsbegin_pidbase ) - pidbase ; 
/*   453 */     } 
/*   463 */     { 
/*   465 */     void * * b = ( void * * ) ( ( char * ) __ghsbinfo_clear + SCIFIX ) ; 
/*   466 */     void * * e = ( void * * ) ( ( char * ) __ghseinfo_clear + SCIFIX ) ; 
/*   467 */     void * * a = __ghsbinfo_aclear ? 
/*   468 */         ( ( void * * ) ( ( char * ) __ghsbinfo_aclear + SCIFIX ) ) : e ; 
/*   480 */     while ( b != e ) { 
/*   481 */         void * t ; 
/*   482 */         ptrdiff_t v ; 
/*   483 */         syze_t n ; 
/*   498 */         t = ( ( b < a ) ? BASE [ PID_SEC ] : 0 ) + ( char * ) ( * b ) ; b ++ ; 
/*   499 */         v = * ( ( ptrdiff_t * ) b ) ; b ++ ; 
/*   500 */         n = * ( ( syze_t * ) b ) ; b ++ ; 
/*   505 */         ( * memsetp ) ( t , v , n ) ; 
/*   508 */     } 
/*   509 */     } 
/*   517 */     { 
/*   519 */     void * * b = ( void * * ) ( ( char * ) __ghsbinfo_copy + SCIFIX ) ; 
/*   520 */     void * * m = ( void * * ) ( ( char * ) __ghsbinfo_tcopy + SCIFIX ) ; 
/*   521 */     void * * e = ( void * * ) ( ( char * ) __ghseinfo_copy + SCIFIX ) ; 
/*   523 */     while ( b != e ) { 
/*   524 */         void * t ; 
/*   525 */         void * s ; 
/*   526 */         syze_t n ; 
/*   527 */         t = ( ( b < m ) ? BASE [ PID_SEC ] : BASE [ PIC_SEC ] ) + ( char * ) ( * b ) ; b ++ ; 
/*   528 */         s = BASE [ PIC_SEC ] + ( char * ) ( * b ++ ) ; 
/*   529 */         n = * ( ( syze_t * ) b ) ; b ++ ; 
/*   533 */         ( * memcpyp ) ( t , s , n ) ; 
/*   536 */         if ( boardcachesyncp ) 
/*   537 */             if ( b >= m ) { 
/*   542 */                 ( * boardcachesyncp ) ( t , n ) ; 
/*   544 */             } 
/*   545 */     } 
/*   546 */     } 
/*   560 */     if ( __ghs_decompress ) 
/*   562 */     { 
/*   563 */     void * * b = ( void * * ) ( ( char * ) __ghsbinfo_comcopy + SCIFIX ) ; 
/*   564 */     void * * m = ( void * * ) ( ( char * ) __ghsbinfo_comtcopy + SCIFIX ) ; 
/*   565 */     void * * e = ( void * * ) ( ( char * ) __ghseinfo_comcopy + SCIFIX ) ; 
/*   567 */     while ( b != e ) { 
/*   568 */         char * t ; 
/*   569 */         char * s ; 
/*   570 */         syze_t n ; 
/*   571 */         syze_t n_decompress ; 
/*   572 */         t = ( ( b < m ) ? BASE [ PID_SEC ] : BASE [ PIC_SEC ] ) + ( char * ) ( * b ) ; b ++ ; 
/*   573 */         s = BASE [ PIC_SEC ] + ( char * ) ( * b ++ ) ; 
/*   574 */         n = * ( ( syze_t * ) b ) ; b ++ ; 
/*   580 */         n_decompress = ( * decompressp ) ( t , s , n ) ; 
/*   584 */         if ( boardcachesyncp ) 
/*   585 */             if ( b >= m ) { 
/*   590 */                 ( * boardcachesyncp ) ( t , n_decompress ) ; 
/*   592 */             } 
/*   593 */     } 
/*   594 */     } 
/*   676 */   { 
/*   682 */         typedef struct { ptrdiff_t UNAL_PTR ; } INIT_PTR ; 
/*   685 */     extern char __ghs_checksum [ ] ; 
/*   687 */     char * * ppaddr = ( char * * ) ( ( char * ) __ghsbegin_fixaddr + SCIFIX ) ; 
/*   688 */     char * * ppaddrend = ( char * * ) ( ( char * ) __ghsend_fixaddr + SCIFIX ) ; 
/*   689 */     char * ptype = ( char * ) ( ( char * ) __ghsbegin_fixtype + SCIFIX ) ; 
/*   698 */     if ( ppaddrend != ppaddr ) 
/*   699 */         ppaddrend = ( char * * ) ( ( syze_t ) ppaddrend - 
/*   700 */                               ( ( syze_t ) __ghs_checksum - BASE [ PID_SEC ] ) ) ; 
/*   702 */     while ( ppaddr != ppaddrend ) { 
/*   703 */         ptrdiff_t tmp ; 
/*   704 */         ptrdiff_t Base ; 
/*   705 */         INIT_PTR * ptr_to_init_ptr ; 
/*   706 */         int type = * ptype ++ ; 
/*   712 */         Base = ( ptrdiff_t ) BASE [ ( type & ( 3 << 4 ) ) >> 4 ] ; 
/*   713 */         ptr_to_init_ptr = ( INIT_PTR * ) ( Base + * ppaddr ++ ) ; 
/*   715 */         tmp = ptr_to_init_ptr -> UNAL_PTR ; 
/*   717 */         if ( ( ( type & ( 1 << 7 ) ) == 0 ) 
/*   718 */            || ( tmp != 0 ) ) { 
/*   720 */             Base = ( ptrdiff_t ) BASE [ type & 3 ] ; 
/*   722 */             if ( ! Base ) 
/*   723 */                 continue ; 
/*   725 */             if ( type & ( 1 << 3 ) ) tmp <<= 2 ; 
/*   726 */             tmp += Base ; 
/*   727 */             if ( type & ( 1 << 3 ) ) tmp >>= 2 ; 
/*   729 */             ptr_to_init_ptr -> UNAL_PTR = tmp ; 
/*   730 */         } 
/*   731 */     } 
/*   732 */   } 
/*   788 */   ( * crt1p ) ( argc , argv , envp ) ; 
/*   790 */ } 
