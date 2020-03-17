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
 * C:/ghs/comp_201854_ppc/ansi/ghs_null.h
 */
/*    53 */      typedef unsigned int size_t ; 
/*
 * C:/ghs/comp_201854_ppc/ansi/ghs_valist.h
 */
/*    69 */   typedef struct _gh_va_struct { int * _oflo_ptr , * _reg_ptr , _int_cnt , _FP_cnt , _mem_cnt ; } _gh_va_list ; 
/*    70 */   typedef struct _va_struct { char _gpr , _fpr , _pad1 , _pad2 ; 
/*    74 */                              char * _overflow_arg_area , * _reg_save_area ; } __gh_va_list [ 1 ] ; 
/*
 * C:/ghs/comp_201854_ppc/ansi/stdarg.h
 */
/*    42 */    typedef __gh_va_list va_list ; 
/*   186 */   char * __gh_va_arg ( _gh_va_list * , int , int , int ) ; 
/*   187 */   void * __va_arg ( va_list , int ) ; 
/*
 * C:/ghs/comp_201854_ppc/ansi/stdio.h
 */
/*    54 */ typedef struct _iobuf { 
/*    55 */ unsigned char * _io_next ; 
/*    57 */ unsigned char * _io_base ; 
/*    58 */     int _io_left ; 
/*    59 */     unsigned _io_channel : 14 ; 
/*    60 */     unsigned _io_used : 1 ; 
/*    61 */     unsigned _io_append : 1 ; 
/*    62 */ unsigned char _io_tmp ; 
/*    63 */     unsigned _io_buffering : 2 ; 
/*    64 */     unsigned _io_eof : 1 ; 
/*    65 */     unsigned _io_error : 1 ; 
/*    66 */     unsigned _io_stdio_buffer : 1 ; 
/*    67 */     unsigned _io_readable : 1 ; 
/*    68 */     unsigned _io_writable : 1 ; 
/*    69 */     unsigned _io_readwrite : 1 ; 
/*    74 */ } FILE ; 
/*   109 */ typedef long int fpos_t ; 
/*   148 */ extern FILE _iob [ ] ; 
/*   165 */ int remove ( const char * ) ; 
/*   166 */ int rename ( const char * , const char * ) ; 
/*   167 */ FILE * tmpfile ( void ) ; 
/*   168 */ char * tmpnam ( char * ) ; 
/*   170 */ int _flsbuf ( int , FILE * ) ; 
/*   171 */ int _filbuf ( FILE * ) ; 
/*   172 */ int fclose ( FILE * ) ; 
/*   173 */ int fflush ( FILE * ) ; 
/*   174 */ FILE * fopen ( const char * , const char * ) ; 
/*   175 */ FILE * freopen ( const char * , const char * , FILE * ) ; 
/*   176 */ FILE * fdopen ( int , const char * ) ; 
/*   177 */ void setbuf ( FILE * , char * ) ; 
/*   178 */ int setvbuf ( FILE * , char * , int , size_t ) ; 
/*   210 */ int fprintf ( FILE * , const char * , ... ) ; 
/*   211 */ int fscanf ( FILE * , const char * , ... ) ; 
/*   212 */ int printf ( const char * , ... ) ; 
/*   213 */ int scanf ( const char * , ... ) ; 
/*   214 */ int snprintf ( char * , size_t , const char * , ... ) ; 
/*   215 */ int sprintf ( char * , const char * , ... ) ; 
/*   216 */ int sscanf ( const char * , const char * , ... ) ; 
/*   218 */ int fgetc ( FILE * ) ; 
/*   219 */ char * fgets ( char * , int , FILE * ) ; 
/*   220 */ int fputc ( int , FILE * ) ; 
/*   221 */ int fputs ( const char * , FILE * ) ; 
/*   222 */ int getc ( FILE * ) ; 
/*   223 */ int getchar ( void ) ; 
/*   225 */ char * gets ( char * ) ; 
/*   227 */ int putc ( int , FILE * ) ; 
/*   228 */ int putchar ( int ) ; 
/*   229 */ int puts ( const char * ) ; 
/*   230 */ int ungetc ( int , FILE * ) ; 
/*   231 */ int getc_unlocked ( FILE * ) ; 
/*   232 */ int getchar_unlocked ( void ) ; 
/*   233 */ int putc_unlocked ( int , FILE * ) ; 
/*   234 */ int putchar_unlocked ( int ) ; 
/*   235 */ size_t fread ( void * , size_t , size_t , FILE * ) ; 
/*   236 */ size_t fwrite ( const void * , size_t , size_t , FILE * ) ; 
/*   238 */ int fgetpos ( FILE * , fpos_t * ) ; 
/*   239 */ int fseek ( FILE * , long int , int ) ; 
/*   240 */ int fsetpos ( FILE * , const fpos_t * ) ; 
/*   241 */ long int ftell ( FILE * ) ; 
/*   242 */ void rewind ( FILE * ) ; 
/*   244 */ void clearerr ( FILE * ) ; 
/*   245 */ int fileno ( FILE * ) ; 
/*   246 */ int feof ( FILE * ) ; 
/*   247 */ int ferror ( FILE * ) ; 
/*   248 */ void perror ( const char * ) ; 
/*   289 */ int vfprintf ( FILE * , const char * , __gh_va_list ) ; 
/*   290 */ int vprintf ( const char * , __gh_va_list ) ; 
/*   291 */ int vsnprintf ( char * , size_t , const char * , __gh_va_list ) ; 
/*   292 */ int vsprintf ( char * , const char * , __gh_va_list ) ; 
/*   293 */ int vfscanf ( FILE * , const char * , __gh_va_list ) ; 
/*   294 */ int vscanf ( const char * , __gh_va_list ) ; 
/*   295 */ int vsscanf ( const char * , const char * , __gh_va_list ) ; 
/*   367 */ void flockfile ( FILE * ) ; 
/*   368 */ int ftrylockfile ( FILE * ) ; 
/*   369 */ void funlockfile ( FILE * ) ; 
/*   371 */ void flockcreate ( FILE * ) ; 
/*   372 */ void flockdestroy ( FILE * ) ; 
/*   374 */ int __ghs_flock_in_use ( void * ) ; 
/*
 * D:/Documents/My Projects/MPC5748G_demo1/src_hello/hello.c
 */
/*     3 */ int main ( int argc , char * argv [ ] ) 
/*     4 */ { 
/*     5 */     printf ( "Hello world.\n" ) ; 
/*     6 */     return 0 ; 
/*     7 */ } 
