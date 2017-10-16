#line 1 "..\\main.c"

 

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
 
 
 





 






 







 




  
 








#line 47 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


  



    typedef unsigned int size_t;    









 
 

 



    typedef struct __va_list __va_list;






   




 




typedef struct __fpos_t_struct {
    unsigned __int64 __pos;
    



 
    struct {
        unsigned int __state1, __state2;
    } __mbstate;
} fpos_t;
   


 


   

 

typedef struct __FILE FILE;
   






 

#line 136 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"


extern FILE __stdin, __stdout, __stderr;
extern FILE *__aeabi_stdin, *__aeabi_stdout, *__aeabi_stderr;

#line 166 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"
    

    

    





     



   


 


   


 

   



 

   


 




   


 





    


 






extern __declspec(__nothrow) int remove(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int rename(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) FILE *tmpfile(void);
   




 
extern __declspec(__nothrow) char *tmpnam(char *  );
   











 

extern __declspec(__nothrow) int fclose(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) int fflush(FILE *  );
   







 
extern __declspec(__nothrow) FILE *fopen(const char * __restrict  ,
                           const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   








































 
extern __declspec(__nothrow) FILE *freopen(const char * __restrict  ,
                    const char * __restrict  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(2,3)));
   








 
extern __declspec(__nothrow) void setbuf(FILE * __restrict  ,
                    char * __restrict  ) __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) int setvbuf(FILE * __restrict  ,
                   char * __restrict  ,
                   int  , size_t  ) __attribute__((__nonnull__(1)));
   















 
#pragma __printf_args
extern __declspec(__nothrow) int fprintf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   


















 
#pragma __printf_args
extern __declspec(__nothrow) int _fprintf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   




 
#pragma __printf_args
extern __declspec(__nothrow) int _printf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __printf_args
extern __declspec(__nothrow) int sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






 
#pragma __printf_args
extern __declspec(__nothrow) int _sprintf(char * __restrict  , const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));


#pragma __printf_args
extern __declspec(__nothrow) int snprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   















 

#pragma __printf_args
extern __declspec(__nothrow) int _snprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , ...) __attribute__((__nonnull__(3)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int fscanf(FILE * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   






























 
#pragma __scanf_args
extern __declspec(__nothrow) int _fscanf(FILE * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   






 
#pragma __scanf_args
extern __declspec(__nothrow) int _scanf(const char * __restrict  , ...) __attribute__((__nonnull__(1)));
   



 
#pragma __scanf_args
extern __declspec(__nothrow) int sscanf(const char * __restrict  ,
                    const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   








 
#pragma __scanf_args
extern __declspec(__nothrow) int _sscanf(const char * __restrict  ,
                     const char * __restrict  , ...) __attribute__((__nonnull__(1,2)));
   



 

 
extern __declspec(__nothrow) int vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int _vfscanf(FILE * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int _vscanf(const char * __restrict  , __va_list) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) int _vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) int __ARM_vsscanf(const char * __restrict  , const char * __restrict  , __va_list) __attribute__((__nonnull__(1,2)));

extern __declspec(__nothrow) int vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int _vprintf(const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int vfprintf(FILE * __restrict  ,
                    const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int vsprintf(char * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int __ARM_vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));

extern __declspec(__nothrow) int vsnprintf(char * __restrict  , size_t  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   







 

extern __declspec(__nothrow) int _vsprintf(char * __restrict  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vfprintf(FILE * __restrict  ,
                     const char * __restrict  , __va_list  ) __attribute__((__nonnull__(1,2)));
   



 
extern __declspec(__nothrow) int _vsnprintf(char * __restrict  , size_t  ,
                      const char * __restrict  , __va_list  ) __attribute__((__nonnull__(3)));
   



 

#pragma __printf_args
extern __declspec(__nothrow) int asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));

#pragma __printf_args
extern __declspec(__nothrow) int __ARM_asprintf(char **  , const char * __restrict  , ...) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) int __ARM_vasprintf(char **  , const char * __restrict  , __va_list  ) __attribute__((__nonnull__(2)));
   








 

extern __declspec(__nothrow) int fgetc(FILE *  ) __attribute__((__nonnull__(1)));
   







 
extern __declspec(__nothrow) char *fgets(char * __restrict  , int  ,
                    FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   










 
extern __declspec(__nothrow) int fputc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   







 
extern __declspec(__nothrow) int fputs(const char * __restrict  , FILE * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int getc(FILE *  ) __attribute__((__nonnull__(1)));
   







 




    extern __declspec(__nothrow) int (getchar)(void);

   





 
extern __declspec(__nothrow) char *gets(char *  ) __attribute__((__nonnull__(1)));
   









 
extern __declspec(__nothrow) int putc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   





 




    extern __declspec(__nothrow) int (putchar)(int  );

   



 
extern __declspec(__nothrow) int puts(const char *  ) __attribute__((__nonnull__(1)));
   





 
extern __declspec(__nothrow) int ungetc(int  , FILE *  ) __attribute__((__nonnull__(2)));
   






















 

extern __declspec(__nothrow) size_t fread(void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   











 

extern __declspec(__nothrow) size_t __fread_bytes_avail(void * __restrict  ,
                    size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,3)));
   











 

extern __declspec(__nothrow) size_t fwrite(const void * __restrict  ,
                    size_t  , size_t  , FILE * __restrict  ) __attribute__((__nonnull__(1,4)));
   







 

extern __declspec(__nothrow) int fgetpos(FILE * __restrict  , fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   








 
extern __declspec(__nothrow) int fseek(FILE *  , long int  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) int fsetpos(FILE * __restrict  , const fpos_t * __restrict  ) __attribute__((__nonnull__(1,2)));
   










 
extern __declspec(__nothrow) long int ftell(FILE *  ) __attribute__((__nonnull__(1)));
   











 
extern __declspec(__nothrow) void rewind(FILE *  ) __attribute__((__nonnull__(1)));
   





 

extern __declspec(__nothrow) void clearerr(FILE *  ) __attribute__((__nonnull__(1)));
   




 

extern __declspec(__nothrow) int feof(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) int ferror(FILE *  ) __attribute__((__nonnull__(1)));
   


 
extern __declspec(__nothrow) void perror(const char *  );
   









 

extern __declspec(__nothrow) int _fisatty(FILE *   ) __attribute__((__nonnull__(1)));
    
 

extern __declspec(__nothrow) void __use_no_semihosting_swi(void);
extern __declspec(__nothrow) void __use_no_semihosting(void);
    





 











#line 1021 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdio.h"



 

#line 5 "..\\main.c"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 7 "..\\main.c"
#line 1 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
 









 


















 













 









 



 
typedef enum IRQn
{
     
    NonMaskableInt_IRQn       = -14,       
    HardFault_IRQn            = -13,       
    SVCall_IRQn               = -5,        
    PendSV_IRQn               = -2,        
    SysTick_IRQn              = -1,        

     
    BOD_IRQn                  = 0,         
    WDT_IRQn                  = 1,         
    EINT0_IRQn                = 2,         
    EINT1_IRQn                = 3,         
    GPIO_P0P1_IRQn            = 4,         
    GPIO_P2P3P4_IRQn          = 5,         
    PWMA_IRQn                 = 6,         
    PWMB_IRQn                 = 7,         
    TMR0_IRQn                 = 8,         
    TMR1_IRQn                 = 9,         
    TMR2_IRQn                 = 10,        
    TMR3_IRQn                 = 11,        
    UART0_IRQn                = 12,        
    UART1_IRQn                = 13,        
    SPI0_IRQn                 = 14,        
    SPI1_IRQn                 = 15,        
    I2C0_IRQn                 = 18,        
    I2C1_IRQn                 = 19,        
    ACMP01_IRQn               = 25,        
    ACMP23_IRQn               = 26,        
    PWRWU_IRQn                = 28,        
    ADC_IRQn                  = 29         

} IRQn_Type;






 

 





#line 1 "..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
 




















 













 












 




 


 

 













#line 89 "..\\..\\Library\\CMSIS\\Include\\core_cm0.h"


 







#line 114 "..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 116 "..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
#line 1 "..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"
 




















 






 


 



 


 









 







 







 






 








 







 







 









 









 
__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 
__attribute__((section(".revsh_text"))) static __inline __asm int32_t __REVSH(int32_t value)
{
  revsh r0, r0
  bx lr
}









 



#line 268 "..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"



#line 619 "..\\..\\Library\\CMSIS\\Include\\core_cmInstr.h"

   

   

#line 117 "..\\..\\Library\\CMSIS\\Include\\core_cm0.h"
#line 1 "..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"
 




















 






 

 



 


 





 
 






 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}







 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
}







 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}







 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}







 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}







 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}







 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}







 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}







 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}







 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}







 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}


#line 260 "..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"


#line 296 "..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"


#line 615 "..\\..\\Library\\CMSIS\\Include\\core_cmFunc.h"

 

   

#line 118 "..\\..\\Library\\CMSIS\\Include\\core_cm0.h"








 
#line 143 "..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

 






 
#line 159 "..\\..\\Library\\CMSIS\\Include\\core_cm0.h"

 










 


 





 


 
typedef union
{
  struct
  {

    uint32_t _reserved0:27;               





    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       

    uint32_t _reserved0:15;               





    uint32_t T:1;                         
    uint32_t IT:2;                        
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;



 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t FPCA:1;                      
    uint32_t _reserved0:29;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 


 
typedef struct
{
  volatile uint32_t ISER[1];                  
       uint32_t RESERVED0[31];
  volatile uint32_t ICER[1];                  
       uint32_t RSERVED1[31];
  volatile uint32_t ISPR[1];                  
       uint32_t RESERVED2[31];
  volatile uint32_t ICPR[1];                  
       uint32_t RESERVED3[31];
       uint32_t RESERVED4[64];
  volatile uint32_t IP[8];                    
}  NVIC_Type;

 






 


 
typedef struct
{
  volatile const  uint32_t CPUID;                    
  volatile uint32_t ICSR;                     
       uint32_t RESERVED0;
  volatile uint32_t AIRCR;                    
  volatile uint32_t SCR;                      
  volatile uint32_t CCR;                      
       uint32_t RESERVED1;
  volatile uint32_t SHP[2];                   
  volatile uint32_t SHCSR;                    
} SCB_Type;

 















 



























 















 









 






 



 






 


 
typedef struct
{
  volatile uint32_t CTRL;                     
  volatile uint32_t LOAD;                     
  volatile uint32_t VAL;                      
  volatile const  uint32_t CALIB;                    
} SysTick_Type;

 












 



 



 









 








 
 






 

 










 









 

 



 




 

 
 










 
static __inline void NVIC_EnableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_DisableIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}











 
static __inline uint32_t NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  return((uint32_t) ((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] & (1 << ((uint32_t)(IRQn) & 0x1F)))?1:0));
}







 
static __inline void NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));
}







 
static __inline void NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[0] = (1 << ((uint32_t)(IRQn) & 0x1F));  
}










 
static __inline void NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if(IRQn < 0) {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] = (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
  else {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] = (((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[( ((uint32_t)(IRQn) >> 2) )] & ~(0xFF << ( (((uint32_t)(IRQn) ) & 0x03) * 8 ))) |
        (((priority << (8 - 2)) & 0xFF) << ( (((uint32_t)(IRQn) ) & 0x03) * 8 )); }
}












 
static __inline uint32_t NVIC_GetPriority(IRQn_Type IRQn)
{

  if(IRQn < 0) {
    return((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[( ((((uint32_t)(IRQn) & 0x0F)-8) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) >> (8 - 2)));  }  
  else {
    return((uint32_t)((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[ ( ((uint32_t)(IRQn) >> 2) )] >> ( (((uint32_t)(IRQn) ) & 0x03) * 8 ) ) >> (8 - 2)));  }  
}





 
static __inline void NVIC_SystemReset(void)
{
  __dsb(0xF);                                                     
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = ((0x5FA << 16)      |
                 (1UL << 2));
  __dsb(0xF);                                                      
  while(1);                                                     
}

 



 




 

















 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if (ticks > (0xFFFFFFUL << 0))  return (1);             

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (ticks & (0xFFFFFFUL << 0)) - 1;       
  NVIC_SetPriority (SysTick_IRQn, (1<<2) - 1);   
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0;                                           
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2) |
                   (1UL << 1)   |
                   (1UL << 0);                     
  return (0);                                                   
}



 








   

#line 108 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\system_M051Series.h"
 









 






typedef unsigned int uint32_t;
 
 
 











 




 





extern uint32_t SystemCoreClock;     
extern uint32_t CyclesPerUs;         
extern uint32_t PllClock;            

#line 65 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\system_M051Series.h"












 
extern void SystemInit(void);











 
extern void SystemCoreClockUpdate(void);







 
#line 109 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"



#pragma anon_unions











 
extern void SystemInit(void);


 
 
 





 

 




 
typedef struct
{
    volatile uint32_t CR[2];

    volatile uint32_t SR;

} ACMP_T;




 

 















 












 











   
   


 



 
typedef struct
{
    



















 
    volatile const uint32_t ADDR[8];

    



























































 
    volatile uint32_t ADCR;

    



































 
    volatile uint32_t ADCHER;

    












































 
    volatile uint32_t ADCMPR[2];

    








































 
    volatile uint32_t ADSR;

    volatile const  uint32_t RESERVED0[4];

    volatile uint32_t ADTDCR;

} ADC_T;





 
 









 



























 






 


















 





















 


   
   



 



 
typedef struct
{
    








 
    volatile  int32_t DIVIDEND;

    









 
    volatile  int32_t DIVISOR;

    








 
    volatile  int32_t DIVQUO;

    








 
    volatile  int32_t DIVREM;

    














 
    volatile uint32_t DIVSTS;

} HDIV_T;





 







   
   



 



 
typedef struct
{
    



























 
    volatile uint32_t EBICON;

    



















 
    volatile uint32_t EXTIME;

    




 
    volatile uint32_t EBICON2;
} EBI_T;





 
 












 












 








   
   




 





 
typedef struct
{
    



































 
    volatile uint32_t ISPCON;

    









 
    volatile uint32_t ISPADR;

    









 
    volatile uint32_t ISPDAT;

    












 
    volatile uint32_t ISPCMD;

    











 
    volatile uint32_t ISPTRG;

    











 
    volatile const  uint32_t DFBADR;

    











 
    volatile uint32_t FATCON;

    volatile const uint32_t Reserved[9];

    























 
    volatile uint32_t ISPSTA;

} FMC_T;




 
 



















 









 



 



 











   
   

 




 
typedef struct
{
    








 
    volatile const  uint32_t PDID;

    




































 
    volatile uint32_t RSTSRC;

    
































 
    volatile uint32_t IPRSTC1;

    













































 
    volatile uint32_t IPRSTC2;

    




 
    uint32_t RESERVED0[2];

    



















































 
    volatile uint32_t BODCR;

    




 
    volatile uint32_t TEMPCR;

    




 
    uint32_t RESERVED1;

    

















 
    volatile uint32_t PORCR;

    




 
    uint32_t RESERVED2[2];

    




































































 
    volatile uint32_t P0_MFP;

    




































































 
    volatile uint32_t P1_MFP;

    




































































 
    volatile uint32_t P2_MFP;

    
































































 
    volatile uint32_t P3_MFP;

    




























































 
    volatile uint32_t P4_MFP;

    




 
    uint32_t RESERVED3[47];

    


























 
    volatile uint32_t REGWRPROT;

} GCR_T;





 

 





















 












 


















































 





















 



 



 












 









 









 









 









 





   


typedef struct
{
    









































































































 
    volatile const  uint32_t IRQSRC[32];

    















 
    volatile uint32_t NMISEL;

    












 
    volatile uint32_t MCUIRQ;

} GCR_INT_T;




 

 





   


   


 



 
typedef struct
{
    






















































 
    volatile uint32_t  PMD;

    









 
    volatile uint32_t  OFFD;

    














































 
    volatile uint32_t  DOUT;

    






















































 
    volatile uint32_t  DMASK;

    






















 
    volatile uint32_t  PIN;

    














































































 
    volatile uint32_t  DBEN;

    






















































































 
    volatile uint32_t  IMD;

    






















































































































































 
    volatile uint32_t  IEN;

    






























































 
    volatile uint32_t  ISRC;
} GPIO_T;

typedef struct
{
    

































 
    volatile uint32_t  DBNCECON;
} GPIO_DBNCECON_T;





 

 
























 



 



 



 



 



 



 






 



 








   
   


 




 
typedef struct
{
    
































 
    volatile uint32_t I2CON;

    













 
    volatile uint32_t I2CADDR0;

    








 
    volatile uint32_t I2CDAT;

    

















 
    volatile const  uint32_t I2CSTATUS;

    








 
    volatile uint32_t I2CLK;

    


















 
    volatile uint32_t I2CTOC;

    













 
    volatile uint32_t I2CADDR1;

    













 
    volatile uint32_t I2CADDR2;

    













 
    volatile uint32_t I2CADDR3;

    














 
    volatile uint32_t I2CADM0;

    














 
    volatile uint32_t I2CADM1;

    














 
    volatile uint32_t I2CADM2;

    














 
    volatile uint32_t I2CADM3;

    




 
    uint32_t RESERVED0[2];

    




 
    volatile uint32_t I2CWKUPCON;

    




 
    volatile uint32_t I2CWKUPSTS;

} I2C_T;




 

 


















 






 



 



 



 









 



 



 



   
   



 




 
typedef struct
{
    






















 
    volatile uint32_t PPR;

    























 
    volatile uint32_t CSR;

    








































































 
    volatile uint32_t PCR;

    
















 
    volatile uint32_t CNR0;

    
















 
    volatile uint32_t CMR0;

    








 
    volatile const  uint32_t PDR0;

    
















 
    volatile uint32_t CNR1;

    
















 
    volatile uint32_t CMR1;

    








 
    volatile const  uint32_t PDR1;

    
















 
    volatile uint32_t CNR2;

    
















 
    volatile uint32_t CMR2;

    








 
    volatile const  uint32_t PDR2;

    
















 
    volatile uint32_t CNR3;

    
















 
    volatile uint32_t CMR3;

    








 
    volatile const  uint32_t PDR3;

    




 
    volatile const uint32_t RESERVE0;

    


















 
    volatile uint32_t PIER;

    


















 
    volatile uint32_t PIIR;

    




 
    volatile const uint32_t    RESERVE1[2];

    








































































 
    volatile uint32_t CCR0;

    








































































 
    volatile uint32_t CCR2;

    








 
    volatile uint32_t CRLR0;

    








 
    volatile uint32_t CFLR0;

    








 
    volatile uint32_t CRLR1;

    








 
    volatile uint32_t CFLR1;

    








 
    volatile uint32_t CRLR2;

    








 
    volatile uint32_t CFLR2;

    








 
    volatile uint32_t CRLR3;

    








 
    volatile uint32_t CFLR3;

    






















 
    volatile uint32_t CAPENR;

    






















 
    volatile uint32_t POE;

    

























































 
    volatile uint32_t TCON;

    






















 
    volatile uint32_t TSTATUS;

    




 
    volatile const  uint32_t  RESERVE2[4];

    


















 
    volatile uint32_t PSCR;

} PWM_T;




 

 












 












 




























































 



 



 




 




































 
























 










































 










































 



 



 












 












 
























 












 











   
   




 



 
typedef struct
{
    


































































 
    volatile uint32_t CNTRL;

    







 
    volatile uint32_t DIVIDER;

    



































 
    volatile uint32_t SSR;

    




 
    volatile const  uint32_t RESERVE0;

    












 
    volatile const  uint32_t RX0;

    




 
    volatile const  uint32_t RESERVE1[2];

    




 
    volatile const  uint32_t RESERVE2;

    













 
    volatile  uint32_t TX0;

    




 
    volatile const  uint32_t RESERVE3[2];

    




 
    volatile const  uint32_t RESERVE4;

    




 
    volatile const  uint32_t RESERVE5;

    




 
    volatile const  uint32_t RESERVE6;

    




 
    volatile const  uint32_t RESERVE7;

    


































 
    volatile uint32_t CNTRL2;

    
































 
    volatile uint32_t FIFO_CTL;

    


















































 
    volatile uint32_t STATUS;

} SPI_T;




 

 
















































 






 















 





















 
























 



































   
   




 




 

typedef struct
{
    



















































 
    volatile uint32_t PWRCON;

    















 
    volatile uint32_t AHBCLK;

    

























































 
    volatile uint32_t APBCLK;

    






















 
    volatile uint32_t CLKSTATUS;

    




























 
    volatile uint32_t CLKSEL0;

    



















































 
    volatile uint32_t CLKSEL1;

    












 
    volatile uint32_t CLKDIV;

    




















 
    volatile uint32_t CLKSEL2;

    






















 
    volatile uint32_t PLLCON;

    














 
    volatile uint32_t FRQDIV;

} CLK_T;




 

 




























 









 



























































 



















 






 

































 












 









 





















 








   
   




 



 
typedef struct
{
    

















































 
    volatile uint32_t  TCSR;

    














 
    volatile uint32_t  TCMPR;

    










 
    volatile uint32_t  TISR;

    









 
    volatile uint32_t  TDR;

    









 
    volatile uint32_t  TCAP;

    





































 
    volatile uint32_t  TEXCON;

    











 
    volatile uint32_t  TEXISR;
} TIMER_T;




 

 










































 



 






 



 



 





















 


   
   


 




 
typedef struct
{

    union
    {
        volatile uint32_t DATA;

        










 
        volatile uint32_t THR;

        








 
        volatile uint32_t RBR;
    };

    









































 
    volatile uint32_t IER;

    


































 
    volatile uint32_t FCR;

    





























 
    volatile uint32_t LCR;

    

















 
    volatile uint32_t MCR;

    
















 
    volatile uint32_t MSR;

    




























































 
    volatile uint32_t FSR;

    















































 
    volatile uint32_t ISR;

    














 
    volatile uint32_t TOR;

    





















 
    volatile uint32_t BAUD;

    















 
    volatile uint32_t IRCR;

    




































 
    volatile uint32_t ALT_CSR;

    











 
    volatile uint32_t FUN_SEL;
} UART_T;




 

 



 



 

































 















 


















 









 









 







































 










































 






 












 









 
























 


   
   



 



 
typedef struct
{
    















































 
    volatile uint32_t  WTCR;

    




 
    volatile uint32_t  WTCRALT;
} WDT_T;




 

 






























 


   
   


 



 
typedef struct
{
    










 
    volatile uint32_t  WWDTRLD;

    



























 
    volatile uint32_t  WWDTCR;

    











 
    volatile uint32_t  WWDTSR;

    








 
    volatile uint32_t  WWDTCVR;

} WWDT_T;




 

 



 















 






 


   
   
   


 
 
 



 
 






 
#line 6482 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"









































   

 
 
 




 
#line 6539 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"







































   



typedef volatile unsigned char  vu8;
typedef volatile unsigned long  vu32;
typedef volatile unsigned short vu16;




#line 6595 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"

#line 6602 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"













 
#line 6648 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"


 











 
 
 
#line 1 "..\\..\\Library\\StdDriver\\inc\\sys.h"
 









 




#line 1 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
 









 


















 













 

#line 6681 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"

 

#line 17 "..\\..\\Library\\StdDriver\\inc\\sys.h"









 



 



 

 
 
 
#line 59 "..\\..\\Library\\StdDriver\\inc\\sys.h"


 
 
 
#line 70 "..\\..\\Library\\StdDriver\\inc\\sys.h"


 
 
 




#line 85 "..\\..\\Library\\StdDriver\\inc\\sys.h"

#line 92 "..\\..\\Library\\StdDriver\\inc\\sys.h"























































#line 153 "..\\..\\Library\\StdDriver\\inc\\sys.h"

#line 160 "..\\..\\Library\\StdDriver\\inc\\sys.h"













































#line 211 "..\\..\\Library\\StdDriver\\inc\\sys.h"








































#line 257 "..\\..\\Library\\StdDriver\\inc\\sys.h"











































   



 





 





 





 





 






 







 





 





 





 










 






 






 






 






 






 






 





 





 





 





 






 






 
static __inline void SYS_LockReg(void)
{
    ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0;
}





 
static __inline void SYS_UnlockReg(void)
{
    while(((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT != (1ul << 0))
    {
        ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0x59;
        ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0x16;
        ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->REGWRPROT = 0x88;
    }
}




void SYS_ClearResetSrc(uint32_t u32Src);
uint32_t SYS_GetBODStatus(void);
uint32_t SYS_GetResetSrc(void);
uint32_t SYS_IsRegLocked(void);
uint32_t  SYS_ReadPDID(void);
void SYS_ResetChip(void);
void SYS_ResetCPU(void);
void SYS_ResetModule(uint32_t u32ModuleIndex);
void SYS_EnableBOD(int32_t i32Mode, uint32_t u32BODLevel);
void SYS_DisableBOD(void);


   

   

   






#line 6666 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\clk.h"
 









 




#line 17 "..\\..\\Library\\StdDriver\\inc\\clk.h"




 



 



 






 
 
 





 
 
 
#line 55 "..\\..\\Library\\StdDriver\\inc\\clk.h"


 
 
 
#line 101 "..\\..\\Library\\StdDriver\\inc\\clk.h"


 
 
 
#line 120 "..\\..\\Library\\StdDriver\\inc\\clk.h"


 
 
 





 
 
 














 
 
 
#line 159 "..\\..\\Library\\StdDriver\\inc\\clk.h"
 
 
 
#line 182 "..\\..\\Library\\StdDriver\\inc\\clk.h"


   




 





 
static __inline uint32_t CLK_GetPLLClockFreq(void)
{
    uint32_t u32PllFreq = 0, u32PllReg;
    uint32_t u32FIN, u32NF, u32NR, u32NO;
    uint8_t au8NoTbl[4] = {1, 2, 2, 4};

    u32PllReg = ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->PLLCON;

    if(u32PllReg & ((1ul << 16) | (1ul << 18)))
        return 0;            

    if(u32PllReg & 0x00080000UL)
        u32FIN = (22118400UL);     
    else
        u32FIN = (12000000UL);      

    if(u32PllReg & (1ul << 17))
        return u32FIN;       

     
    u32NO = au8NoTbl[((u32PllReg & (3ul << 14)) >> 14)];
    u32NF = ((u32PllReg & (0x1FFul << 0)) >> 0) + 2;
    u32NR = ((u32PllReg & (0x1Ful << 9)) >> 9) + 2;

     
    u32PllFreq = (((u32FIN >> 2) * u32NF) / (u32NR * u32NO) << 2);

    return u32PllFreq;
}








 
static __inline void CLK_SysTickDelay(uint32_t us)
{
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD = us * CyclesPerUs;
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL  = (0x00);
    ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL = (1UL << 2) | (1UL << 0);

     
    while((((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL & (1UL << 16)) == 0);
}


void CLK_DisableCKO(void);
void CLK_EnableCKO(uint32_t u32ClkSrc, uint32_t u32ClkDiv, uint32_t u32ClkDivBy1En);
void CLK_PowerDown(void);
void CLK_Idle(void);
uint32_t CLK_GetHXTFreq(void);
uint32_t CLK_GetLXTFreq(void);
uint32_t CLK_GetHCLKFreq(void);
uint32_t CLK_GetPCLKFreq(void);
uint32_t CLK_GetCPUFreq(void);
uint32_t CLK_SetCoreClock(uint32_t u32Hclk);
void CLK_SetHCLK(uint32_t u32ClkSrc, uint32_t u32ClkDiv);
void CLK_SetModuleClock(uint32_t u32ModuleIdx, uint32_t u32ClkSrc, uint32_t u32ClkDiv);
void CLK_SetSysTickClockSrc(uint32_t u32ClkSrc);
void CLK_EnableXtalRC(uint32_t u32ClkMask);
void CLK_DisableXtalRC(uint32_t u32ClkMask);
void CLK_EnableModuleClock(uint32_t u32ModuleIdx);
void CLK_DisableModuleClock(uint32_t u32ModuleIdx);
uint32_t CLK_EnablePLL(uint32_t u32PllClkSrc, uint32_t u32PllFreq);
void CLK_DisablePLL(void);
void CLK_WaitClockReady(uint32_t u32ClkMask);


   

   

   







 
#line 6667 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\adc.h"
 








 
#line 12 "..\\..\\Library\\StdDriver\\inc\\adc.h"











 



 



 
 
 
 

























 
 
 




 
 
 
#line 76 "..\\..\\Library\\StdDriver\\inc\\adc.h"

 
 
 




 
 
 





 
 
 





 
 
 



 
 
 





   



 










 







 











 











 








 









 









 






 






 

















 
#line 232 "..\\..\\Library\\StdDriver\\inc\\adc.h"




 















 
#line 262 "..\\..\\Library\\StdDriver\\inc\\adc.h"




 









 











 






 











 


void ADC_Open(ADC_T *adc,
              uint32_t u32InputMode,
              uint32_t u32OpMode,
              uint32_t u32ChMask);
void ADC_Close(ADC_T *adc);
void ADC_EnableHWTrigger(ADC_T *adc,
                         uint32_t u32Source,
                         uint32_t u32Param);
void ADC_DisableHWTrigger(ADC_T *adc);
void ADC_EnableInt(ADC_T *adc, uint32_t u32Mask);
void ADC_DisableInt(ADC_T *adc, uint32_t u32Mask);



   

   

   







 
#line 6668 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\ebi.h"
 








 











 



 



 
 
 
 



 
 
 



 
 
 
#line 52 "..\\..\\Library\\StdDriver\\inc\\ebi.h"

#line 60 "..\\..\\Library\\StdDriver\\inc\\ebi.h"

   




 



 




 




 




 




 




 


void EBI_Open(uint32_t u32Bank, uint32_t u32DataWidth, uint32_t u32TimingClass, uint32_t u32BusMode, uint32_t u32CSActiveLevel);
void EBI_Close(uint32_t u32Bank);
void EBI_SetBusTiming(uint32_t u32Bank, uint32_t u32TimingConfig, uint32_t u32MclkDiv);

   

   

   







 
#line 6669 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\fmc.h"
 









 



#line 16 "..\\..\\Library\\StdDriver\\inc\\fmc.h"









 



 



 


 
 
 







 
 
 



 
 
 
#line 62 "..\\..\\Library\\StdDriver\\inc\\fmc.h"


   



 

 
 
 
#line 84 "..\\..\\Library\\StdDriver\\inc\\fmc.h"


 
 
 












 
static __inline void FMC_Write(uint32_t u32addr, uint32_t u32data)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x21;    
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32addr;               
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT = u32data;               
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                   
    __isb(0xF);                             
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);                  
}













 
static __inline uint32_t FMC_Read(uint32_t u32addr)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x00;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32addr;          
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;              
    __isb(0xF);                        
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);             

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}
















 
static __inline int32_t FMC_Erase(uint32_t u32addr)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x22;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32addr;                
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                    
    __isb(0xF);                              
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);                   

     
    if(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON & (1ul << 6))
    {
        ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON = (1ul << 6);
        return -1;
    }
    return 0;
}













 
static __inline uint32_t FMC_ReadUID(uint8_t u8index)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x04;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = (u8index << 2);       
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                  
    __isb(0xF);                            
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);                 

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}








 
static __inline uint32_t FMC_ReadCID(void)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x0B;            
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = 0x0;                            
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = (1ul << 0);           
    __isb(0xF);                                      
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG & (1ul << 0)) ;   

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}







 
static __inline uint32_t FMC_ReadDID(void)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x0C;           
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = 0;                             
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = (1ul << 0);          
    __isb(0xF);                                     
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG & (1ul << 0));   

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}








 
static __inline uint32_t FMC_ReadPID(void)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x0C;           
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = 0x04;                          
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = (1ul << 0);          
    __isb(0xF);                                     
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG & (1ul << 0));   

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}








 
static __inline uint32_t FMC_ReadUCID(uint32_t u32Index)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x04;           
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = (0x04 * u32Index) + 0x10;      
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = (1ul << 0);          
    __isb(0xF);                                     
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG & (1ul << 0));   

    return ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPDAT;
}













 
static __inline void FMC_SetVectorPageAddr(uint32_t u32PageAddr)
{
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCMD = 0x2e;  
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPADR = u32PageAddr;        
    ((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG = 0x1;                
    __isb(0xF);                          
    while(((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPTRG);               
}












 
static __inline uint32_t FMC_GetVECMAP(void)
{
    return (((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPSTA & (0xffful << 9));
}

extern void FMC_Open(void);
extern void FMC_Close(void);
extern void FMC_EnableAPUpdate(void);
extern void FMC_DisableAPUpdate(void);
extern void FMC_EnableConfigUpdate(void);
extern void FMC_DisableConfigUpdate(void);
extern void FMC_EnableLDUpdate(void);
extern void FMC_DisableLDUpdate(void);
extern int32_t FMC_ReadConfig(uint32_t *u32Config, uint32_t u32Count);
extern int32_t FMC_WriteConfig(uint32_t *u32Config, uint32_t u32Count);
extern void FMC_SetBootSource(int32_t i32BootSrc);
extern int32_t FMC_GetBootSource(void);
extern uint32_t FMC_ReadDataFlashBaseAddr(void);

   

   

   








#line 6670 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\gpio.h"
 









 

#line 14 "..\\..\\Library\\StdDriver\\inc\\gpio.h"











 



 



 


 
 
 





 
 
 






 
 
 



 
 
 






#line 84 "..\\..\\Library\\StdDriver\\inc\\gpio.h"














 
#line 140 "..\\..\\Library\\StdDriver\\inc\\gpio.h"
   




 











 












 











 












 












 












 












 













 



















 










 











 










 













 












 














 












 



void GPIO_SetMode(GPIO_T *port, uint32_t u32PinMask, uint32_t u32Mode);
void GPIO_EnableInt(GPIO_T *port, uint32_t u32Pin, uint32_t u32IntAttribs);
void GPIO_DisableInt(GPIO_T *port, uint32_t u32Pin);


   

   

   







 
#line 6671 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\i2c.h"
 









 



#line 16 "..\\..\\Library\\StdDriver\\inc\\i2c.h"









 



 



 

 
 
 
#line 49 "..\\..\\Library\\StdDriver\\inc\\i2c.h"

   



 







 









 









 









 









 









 









 











 











 









 


void I2C_ClearTimeoutFlag(I2C_T *i2c);
void I2C_Close(I2C_T *i2c);
void I2C_Trigger(I2C_T *i2c, uint8_t u8Start, uint8_t u8Stop, uint8_t u8Si, uint8_t u8Ack);
void I2C_DisableInt(I2C_T *i2c);
void I2C_EnableInt(I2C_T *i2c);
uint32_t I2C_GetBusClockFreq(I2C_T *i2c);
uint32_t I2C_GetIntFlag(I2C_T *i2c);
uint32_t I2C_GetStatus(I2C_T *i2c);
uint32_t I2C_Open(I2C_T *i2c, uint32_t u32BusClock);
uint8_t I2C_GetData(I2C_T *i2c);
void I2C_SetSlaveAddr(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddr, uint8_t u8GCMode);
void I2C_SetSlaveAddrMask(I2C_T *i2c, uint8_t u8SlaveNo, uint8_t u8SlaveAddrMask);
uint32_t I2C_SetClockBusFreq(I2C_T *i2c, uint32_t u32BusClock);
void I2C_EnableTimeout(I2C_T *i2c, uint8_t u8LongTimeout);
void I2C_DisableTimeout(I2C_T *i2c);
void I2C_EnableWakeup(I2C_T *i2c);
void I2C_DisableWakeup(I2C_T *i2c);
void I2C_SetData(I2C_T *i2c, uint8_t u8Data);

   

   

   

#line 6672 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\pwm.h"
 








 











 



 



 
#line 47 "..\\..\\Library\\StdDriver\\inc\\pwm.h"
 
 
 






   




 










 
#line 81 "..\\..\\Library\\StdDriver\\inc\\pwm.h"










 
#line 100 "..\\..\\Library\\StdDriver\\inc\\pwm.h"










 
#line 120 "..\\..\\Library\\StdDriver\\inc\\pwm.h"









 










 













 

















 













 














 














 
#line 225 "..\\..\\Library\\StdDriver\\inc\\pwm.h"


uint32_t PWM_ConfigCaptureChannel(PWM_T *pwm,
                                  uint32_t u32ChannelNum,
                                  uint32_t u32UnitTimeNsec,
                                  uint32_t u32CaptureEdge);
uint32_t PWM_ConfigOutputChannel(PWM_T *pwm,
                                 uint32_t u32ChannelNum,
                                 uint32_t u32Frequncy,
                                 uint32_t u32DutyCycle);
void PWM_Start(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_Stop(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_ForceStop(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableADCTrigger(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Condition);
void PWM_DisableADCTrigger(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearADCTriggerFlag(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Condition);
uint32_t PWM_GetADCTriggerFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableCapture(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_DisableCapture(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableOutput(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_DisableOutput(PWM_T *pwm, uint32_t u32ChannelMask);
void PWM_EnableDeadZone(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Duration);
void PWM_DisableDeadZone(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableCaptureInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void PWM_DisableCaptureInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
void PWM_ClearCaptureIntFlag(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32Edge);
uint32_t PWM_GetCaptureIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnableDutyInt(PWM_T *pwm, uint32_t u32ChannelNum, uint32_t u32IntDutyType);
void PWM_DisableDutyInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearDutyIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetDutyIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_EnablePeriodInt(PWM_T *pwm, uint32_t u32ChannelNum,  uint32_t u32IntPeriodType);
void PWM_DisablePeriodInt(PWM_T *pwm, uint32_t u32ChannelNum);
void PWM_ClearPeriodIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);
uint32_t PWM_GetPeriodIntFlag(PWM_T *pwm, uint32_t u32ChannelNum);



   

   

   







 
#line 6673 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\spi.h"
 








 











 



 



 













#line 50 "..\\..\\Library\\StdDriver\\inc\\spi.h"







   




 





 






 






 






 






 






 








 








 








 






 






 







 







 






 






 






 






 







 






 






 







 








 






 



 
uint32_t SPI_Open(SPI_T *spi, uint32_t u32MasterSlave, uint32_t u32SPIMode, uint32_t u32DataWidth, uint32_t u32BusClock);
void SPI_Close(SPI_T *spi);
void SPI_ClearRxFIFO(SPI_T *spi);
void SPI_ClearTxFIFO(SPI_T *spi);
void SPI_DisableAutoSS(SPI_T *spi);
void SPI_EnableAutoSS(SPI_T *spi, uint32_t u32SSPinMask, uint32_t u32ActiveLevel);
uint32_t SPI_SetBusClock(SPI_T *spi, uint32_t u32BusClock);
void SPI_EnableFIFO(SPI_T *spi, uint32_t u32TxThreshold, uint32_t u32RxThreshold);
void SPI_DisableFIFO(SPI_T *spi);
uint32_t SPI_GetBusClock(SPI_T *spi);
void SPI_EnableInt(SPI_T *spi, uint32_t u32Mask);
void SPI_DisableInt(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetIntFlag(SPI_T *spi, uint32_t u32Mask);
void SPI_ClearIntFlag(SPI_T *spi, uint32_t u32Mask);
uint32_t SPI_GetStatus(SPI_T *spi, uint32_t u32Mask);

   

   

   







 
#line 6674 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\timer.h"
 








 











 



 



 

#line 48 "..\\..\\Library\\StdDriver\\inc\\timer.h"

   




 










 












 










 













 




 
static __inline void TIMER_Start(TIMER_T *timer)
{
    timer->TCSR |= (1ul << 30);
}



 
static __inline void TIMER_Stop(TIMER_T *timer)
{
    timer->TCSR &= ~(1ul << 30);
}




 
static __inline void TIMER_EnableWakeup(TIMER_T *timer)
{
    timer->TCSR |= (1ul << 23);
}



 
static __inline void TIMER_DisableWakeup(TIMER_T *timer)
{
    timer->TCSR &= ~(1ul << 23);
}



 
static __inline void TIMER_EnableCaptureDebounce(TIMER_T *timer)
{
    timer->TEXCON |= (1ul << 6);
}



 
static __inline void TIMER_DisableCaptureDebounce(TIMER_T *timer)
{
    timer->TEXCON &= ~(1ul << 6);
}



 
static __inline void TIMER_EnableEventCounterDebounce(TIMER_T *timer)
{
    timer->TEXCON |= (1ul << 7);
}



 
static __inline void TIMER_DisableEventCounterDebounce(TIMER_T *timer)
{
    timer->TEXCON &= ~(1ul << 7);
}



 
static __inline void TIMER_EnableInt(TIMER_T *timer)
{
    timer->TCSR |= (1ul << 29);
}



 
static __inline void TIMER_DisableInt(TIMER_T *timer)
{
    timer->TCSR &= ~(1ul << 29);
}



 
static __inline void TIMER_EnableCaptureInt(TIMER_T *timer)
{
    timer->TEXCON |= (1ul << 5);
}



 
static __inline void TIMER_DisableCaptureInt(TIMER_T *timer)
{
    timer->TEXCON &= ~(1ul << 5);
}











 
static __inline uint32_t TIMER_GetIntFlag(TIMER_T *timer)
{
    return (timer->TISR & (1ul << 0) ? 1 : 0);
}



 
static __inline void TIMER_ClearIntFlag(TIMER_T *timer)
{
    timer->TISR = (1ul << 0);
}











 
static __inline uint32_t TIMER_GetCaptureIntFlag(TIMER_T *timer)
{
    return timer->TEXISR;
}



 
static __inline void TIMER_ClearCaptureIntFlag(TIMER_T *timer)
{
    timer->TEXISR = (1ul << 0);
}











 
static __inline uint32_t TIMER_GetWakeupFlag(TIMER_T *timer)
{
    return (timer->TISR & (1ul << 1) ? 1 : 0);
}



 
static __inline void TIMER_ClearWakeupFlag(TIMER_T *timer)
{
    timer->TISR = (1ul << 1);
}



 
static __inline uint32_t TIMER_GetCaptureData(TIMER_T *timer)
{
    return timer->TCAP;
}



 
static __inline uint32_t TIMER_GetCounter(TIMER_T *timer)
{
    return timer->TDR;
}

uint32_t TIMER_Open(TIMER_T *timer, uint32_t u32Mode, uint32_t u32Freq);
void TIMER_Close(TIMER_T *timer);
void TIMER_Delay(TIMER_T *timer, uint32_t u32Usec);
void TIMER_EnableCapture(TIMER_T *timer, uint32_t u32CapMode, uint32_t u32Edge);
void TIMER_DisableCapture(TIMER_T *timer);
void TIMER_EnableEventCounter(TIMER_T *timer, uint32_t u32Edge);
void TIMER_DisableEventCounter(TIMER_T *timer);
uint32_t TIMER_GetModuleClock(TIMER_T *timer);

   

   

   







 
#line 6675 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\wdt.h"
 








 











 



 



 
 
 
 
#line 42 "..\\..\\Library\\StdDriver\\inc\\wdt.h"

 
 
 





   




 



 




 




 










 










 










 






 










 
static __inline void WDT_Close(void)
{
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x4000))->WTCR = 0;
    return;
}









 
static __inline void WDT_EnableInt(void)
{
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x4000))->WTCR |= (1ul << 6);
    return;
}









 
static __inline void WDT_DisableInt(void)
{
    
    ((WDT_T *) ((( uint32_t)0x40000000) + 0x4000))->WTCR &= ~((1ul << 6) | (1ul << 2) | (1ul << 3));
    return;
}

void WDT_Open(uint32_t u32TimeoutInterval, uint32_t u32ResetDelay, uint32_t u32EnableReset, uint32_t u32EnableWakeup);

   

   

   







 
#line 6676 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\wwdt.h"
 








 











 



 



 
 
 
 
#line 50 "..\\..\\Library\\StdDriver\\inc\\wwdt.h"



   




 



 




 










 










 




 






 


void WWDT_Open(uint32_t u32PreScale, uint32_t u32CmpValue, uint32_t u32EnableInt);

   

   

   







 
#line 6677 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\uart.h"
 








 



#line 15 "..\\..\\Library\\StdDriver\\inc\\uart.h"









 



 



 

 
 
 











 
 
 
















 
 
 



 
 
 



 
 
 






   




 








 









 











 









 










 








 









 









 








 









 










 











 











 









 









 


















 

















 



















 








 
__inline void UART_CLEAR_RTS(UART_T* uart)
{
    uart->MCR |= (1ul << 9);
    uart->MCR &= ~(1ul << 1);
}






 
__inline void UART_SET_RTS(UART_T* uart)
{
    uart->MCR |= (1ul << 9) | (1ul << 1);
}







 








 



void UART_ClearIntFlag(UART_T* uart , uint32_t u32InterruptFlag);
void UART_Close(UART_T* uart);
void UART_DisableFlowCtrl(UART_T* uart);
void UART_DisableInt(UART_T*  uart, uint32_t u32InterruptFlag);
void UART_EnableFlowCtrl(UART_T* uart);
void UART_EnableInt(UART_T*  uart, uint32_t u32InterruptFlag);
void UART_Open(UART_T* uart, uint32_t u32baudrate);
uint32_t UART_Read(UART_T* uart, uint8_t *pu8RxBuf, uint32_t u32ReadBytes);
void UART_SetLine_Config(UART_T* uart, uint32_t u32baudrate, uint32_t u32data_width, uint32_t u32parity, uint32_t  u32stop_bits);
void UART_SetTimeoutCnt(UART_T* uart, uint32_t u32TOC);
void UART_SelectIrDAMode(UART_T* uart, uint32_t u32Buadrate, uint32_t u32Direction);
void UART_SelectRS485Mode(UART_T* uart, uint32_t u32Mode, uint32_t u32Addr);
void UART_SelectLINMode(UART_T* uart, uint32_t u32Mode, uint32_t u32BreakLength);
uint32_t UART_Write(UART_T* uart, uint8_t *pu8TxBuf, uint32_t u32WriteBytes);


   

   

   







 

#line 6678 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\hdiv.h"
 









 














 
static __inline int32_t HDIV_Div(int32_t x, int16_t y)
{
    uint32_t *p32;

    p32 = (uint32_t *)((( uint32_t)0x50000000) + 0x14000);
    *p32++ = x;
    *p32++ = y;
    return *p32;
}











 
static __inline int16_t HDIV_Mod(int32_t x, int16_t y)
{
    uint32_t *p32;

    p32 = (uint32_t *)((( uint32_t)0x50000000) + 0x14000);
    *p32++ = x;
    *p32++ = y;
    return p32[1];
}





#line 6679 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"
#line 1 "..\\..\\Library\\StdDriver\\inc\\acmp.h"
 








 











 



 



 

 
 
 
#line 44 "..\\..\\Library\\StdDriver\\inc\\acmp.h"

   




 






 







 










 







 







 







 







 








 







 







 







 







 


void ACMP_Open(ACMP_T *, uint32_t u32ChNum, uint32_t u32NegSrc, uint32_t u32HysteresisEn);
void ACMP_Close(ACMP_T *, uint32_t u32ChNum);

   

   

   







 
#line 6680 "..\\..\\Library\\Device\\Nuvoton\\M051Series\\Include\\M051Series.h"


 

#line 8 "..\\main.c"
#line 1 "..\\..\\Library\\StdDriver\\inc\\gpio.h"
 









 

#line 14 "..\\..\\Library\\StdDriver\\inc\\gpio.h"
#line 377 "..\\..\\Library\\StdDriver\\inc\\gpio.h"

 
#line 9 "..\\main.c"
#line 10 "..\\main.c"
#line 1 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"




 





 












 






   









 






#line 61 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 75 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   




 















 
#line 112 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











 





extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_dcmp4(double  , double  );
extern __attribute__((__pcs__("aapcs"))) unsigned __ARM_fcmp4(float  , float  );
    




 

extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassifyf(float  );
extern __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_fpclassify(double  );
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinitef(float __x)
{
    return (((*(unsigned *)&(__x)) >> 23) & 0xff) != 0xff;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isfinite(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff) != 0x7ff;
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinff(float __x)
{
    return ((*(unsigned *)&(__x)) << 1) == 0xff000000;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isinf(double __x)
{
    return (((*(1 + (unsigned *)&(__x))) << 1) == 0xffe00000) && ((*(unsigned *)&(__x)) == 0);
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreaterf(float __x, float __y)
{
    unsigned __f = __ARM_fcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_islessgreater(double __x, double __y)
{
    unsigned __f = __ARM_dcmp4(__x, __y) >> 28;
    return (__f == 8) || (__f == 2);  
}
    


 

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnanf(float __x)
{
    return (0x7f800000 - ((*(unsigned *)&(__x)) & 0x7fffffff)) >> 31;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnan(double __x)
{
    unsigned __xf = (*(1 + (unsigned *)&(__x))) | (((*(unsigned *)&(__x)) == 0) ? 0 : 1);
    return (0x7ff00000 - (__xf & 0x7fffffff)) >> 31;
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormalf(float __x)
{
    unsigned __xe = ((*(unsigned *)&(__x)) >> 23) & 0xff;
    return (__xe != 0xff) && (__xe != 0);
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_isnormal(double __x)
{
    unsigned __xe = ((*(1 + (unsigned *)&(__x))) >> 20) & 0x7ff;
    return (__xe != 0x7ff) && (__xe != 0);
}
     
     

__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbitf(float __x)
{
    return (*(unsigned *)&(__x)) >> 31;
}
__inline __declspec(__nothrow) __attribute__((__pcs__("aapcs"))) int __ARM_signbit(double __x)
{
    return (*(1 + (unsigned *)&(__x))) >> 31;
}
     
     








#line 230 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"







   
  typedef float float_t;
  typedef double double_t;
#line 251 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"



extern const int math_errhandling;
#line 261 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

extern __declspec(__nothrow) double acos(double  );
    
    
    
extern __declspec(__nothrow) double asin(double  );
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double atan(double  );
    
    

extern __declspec(__nothrow) double atan2(double  , double  );
    
    
    
    

extern __declspec(__nothrow) double cos(double  );
    
    
    
    
extern __declspec(__nothrow) double sin(double  );
    
    
    
    

extern void __use_accurate_range_reduction(void);
    
    

extern __declspec(__nothrow) double tan(double  );
    
    
    
    

extern __declspec(__nothrow) double cosh(double  );
    
    
    
    
extern __declspec(__nothrow) double sinh(double  );
    
    
    
    
    

extern __declspec(__nothrow) __attribute__((const)) double tanh(double  );
    
    

extern __declspec(__nothrow) double exp(double  );
    
    
    
    
    

extern __declspec(__nothrow) double frexp(double  , int *  ) __attribute__((__nonnull__(2)));
    
    
    
    
    
    

extern __declspec(__nothrow) double ldexp(double  , int  );
    
    
    
    
extern __declspec(__nothrow) double log(double  );
    
    
    
    
    
extern __declspec(__nothrow) double log10(double  );
    
    
    
extern __declspec(__nothrow) double modf(double  , double *  ) __attribute__((__nonnull__(2)));
    
    
    
    

extern __declspec(__nothrow) double pow(double  , double  );
    
    
    
    
    
    
extern __declspec(__nothrow) double sqrt(double  );
    
    
    




    __inline double _sqrt(double __x) { return sqrt(__x); }




    __inline float _sqrtf(float __x) { return (float)sqrt(__x); }

    



 

extern __declspec(__nothrow) __attribute__((const)) double ceil(double  );
    
    
extern __declspec(__nothrow) __attribute__((const)) double fabs(double  );
    
    

extern __declspec(__nothrow) __attribute__((const)) double floor(double  );
    
    

extern __declspec(__nothrow) double fmod(double  , double  );
    
    
    
    
    

    









 



extern __declspec(__nothrow) double acosh(double  );
    

 
extern __declspec(__nothrow) double asinh(double  );
    

 
extern __declspec(__nothrow) double atanh(double  );
    

 
extern __declspec(__nothrow) double cbrt(double  );
    

 
__inline __declspec(__nothrow) __attribute__((const)) double copysign(double __x, double __y)
    

 
{
    (*(1 + (unsigned *)&(__x))) = ((*(1 + (unsigned *)&(__x))) & 0x7fffffff) | ((*(1 + (unsigned *)&(__y))) & 0x80000000);
    return __x;
}
__inline __declspec(__nothrow) __attribute__((const)) float copysignf(float __x, float __y)
    

 
{
    (*(unsigned *)&(__x)) = ((*(unsigned *)&(__x)) & 0x7fffffff) | ((*(unsigned *)&(__y)) & 0x80000000);
    return __x;
}
extern __declspec(__nothrow) double erf(double  );
    

 
extern __declspec(__nothrow) double erfc(double  );
    

 
extern __declspec(__nothrow) double expm1(double  );
    

 



    

 






#line 479 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"


extern __declspec(__nothrow) double hypot(double  , double  );
    




 
extern __declspec(__nothrow) int ilogb(double  );
    

 
extern __declspec(__nothrow) int ilogbf(float  );
    

 
extern __declspec(__nothrow) int ilogbl(long double  );
    

 







    

 





    



 





    



 





    

 





    



 





    



 





    



 





    

 





    

 





    


 

extern __declspec(__nothrow) double lgamma (double  );
    


 
extern __declspec(__nothrow) double log1p(double  );
    

 
extern __declspec(__nothrow) double logb(double  );
    

 
extern __declspec(__nothrow) float logbf(float  );
    

 
extern __declspec(__nothrow) long double logbl(long double  );
    

 
extern __declspec(__nothrow) double nextafter(double  , double  );
    


 
extern __declspec(__nothrow) float nextafterf(float  , float  );
    


 
extern __declspec(__nothrow) long double nextafterl(long double  , long double  );
    


 
extern __declspec(__nothrow) double nexttoward(double  , long double  );
    


 
extern __declspec(__nothrow) float nexttowardf(float  , long double  );
    


 
extern __declspec(__nothrow) long double nexttowardl(long double  , long double  );
    


 
extern __declspec(__nothrow) double remainder(double  , double  );
    

 
extern __declspec(__nothrow) __attribute__((const)) double rint(double  );
    

 
extern __declspec(__nothrow) double scalbln(double  , long int  );
    

 
extern __declspec(__nothrow) float scalblnf(float  , long int  );
    

 
extern __declspec(__nothrow) long double scalblnl(long double  , long int  );
    

 
extern __declspec(__nothrow) double scalbn(double  , int  );
    

 
extern __declspec(__nothrow) float scalbnf(float  , int  );
    

 
extern __declspec(__nothrow) long double scalbnl(long double  , int  );
    

 




    

 



 
extern __declspec(__nothrow) __attribute__((const)) float _fabsf(float);  
__inline __declspec(__nothrow) __attribute__((const)) float fabsf(float __f) { return _fabsf(__f); }
extern __declspec(__nothrow) float sinf(float  );
extern __declspec(__nothrow) float cosf(float  );
extern __declspec(__nothrow) float tanf(float  );
extern __declspec(__nothrow) float acosf(float  );
extern __declspec(__nothrow) float asinf(float  );
extern __declspec(__nothrow) float atanf(float  );
extern __declspec(__nothrow) float atan2f(float  , float  );
extern __declspec(__nothrow) float sinhf(float  );
extern __declspec(__nothrow) float coshf(float  );
extern __declspec(__nothrow) float tanhf(float  );
extern __declspec(__nothrow) float expf(float  );
extern __declspec(__nothrow) float logf(float  );
extern __declspec(__nothrow) float log10f(float  );
extern __declspec(__nothrow) float powf(float  , float  );
extern __declspec(__nothrow) float sqrtf(float  );
extern __declspec(__nothrow) float ldexpf(float  , int  );
extern __declspec(__nothrow) float frexpf(float  , int *  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) __attribute__((const)) float ceilf(float  );
extern __declspec(__nothrow) __attribute__((const)) float floorf(float  );
extern __declspec(__nothrow) float fmodf(float  , float  );
extern __declspec(__nothrow) float modff(float  , float *  ) __attribute__((__nonnull__(2)));

 
 













 
__declspec(__nothrow) long double acosl(long double );
__declspec(__nothrow) long double asinl(long double );
__declspec(__nothrow) long double atanl(long double );
__declspec(__nothrow) long double atan2l(long double , long double );
__declspec(__nothrow) long double ceill(long double );
__declspec(__nothrow) long double cosl(long double );
__declspec(__nothrow) long double coshl(long double );
__declspec(__nothrow) long double expl(long double );
__declspec(__nothrow) long double fabsl(long double );
__declspec(__nothrow) long double floorl(long double );
__declspec(__nothrow) long double fmodl(long double , long double );
__declspec(__nothrow) long double frexpl(long double , int* ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double ldexpl(long double , int );
__declspec(__nothrow) long double logl(long double );
__declspec(__nothrow) long double log10l(long double );
__declspec(__nothrow) long double modfl(long double  , long double *  ) __attribute__((__nonnull__(2)));
__declspec(__nothrow) long double powl(long double , long double );
__declspec(__nothrow) long double sinl(long double );
__declspec(__nothrow) long double sinhl(long double );
__declspec(__nothrow) long double sqrtl(long double );
__declspec(__nothrow) long double tanl(long double );
__declspec(__nothrow) long double tanhl(long double );





 
extern __declspec(__nothrow) float acoshf(float  );
__declspec(__nothrow) long double acoshl(long double );
extern __declspec(__nothrow) float asinhf(float  );
__declspec(__nothrow) long double asinhl(long double );
extern __declspec(__nothrow) float atanhf(float  );
__declspec(__nothrow) long double atanhl(long double );
__declspec(__nothrow) long double copysignl(long double , long double );
extern __declspec(__nothrow) float cbrtf(float  );
__declspec(__nothrow) long double cbrtl(long double );
extern __declspec(__nothrow) float erff(float  );
__declspec(__nothrow) long double erfl(long double );
extern __declspec(__nothrow) float erfcf(float  );
__declspec(__nothrow) long double erfcl(long double );
extern __declspec(__nothrow) float expm1f(float  );
__declspec(__nothrow) long double expm1l(long double );
extern __declspec(__nothrow) float log1pf(float  );
__declspec(__nothrow) long double log1pl(long double );
extern __declspec(__nothrow) float hypotf(float  , float  );
__declspec(__nothrow) long double hypotl(long double , long double );
extern __declspec(__nothrow) float lgammaf(float  );
__declspec(__nothrow) long double lgammal(long double );
extern __declspec(__nothrow) float remainderf(float  , float  );
__declspec(__nothrow) long double remainderl(long double , long double );
extern __declspec(__nothrow) float rintf(float  );
__declspec(__nothrow) long double rintl(long double );



#line 875 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





#line 896 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"

#line 1087 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"











#line 1317 "C:\\Keil_v5\\ARM\\ARMCC\\Bin\\..\\include\\math.h"





 
#line 11 "..\\main.c"





 
 
 
float uiAdc8320Value_Hz_mean,gain_uiAdc8320Value_stain_e;
uint8_t AC_counter,Page_1_1_,button_update;
uint8_t	gucOutputVoltageType,gucOutputVoltagePeak,counter_a=0;
float uiAdc8320Value_Hz,gain_uiAdc8320Value,g_au32ADCCount[10]={0},uiAdc8320Value_f,uiAdc8320Value_ac,uiAdc8320Value_f_offset,uiAdc8320Value_Hz_1,gain_uiAdc8320Value_f3,previous_data;

uint8_t gucGainTableIndex;
float 				gfloatGainTable[6]
										={0.33333,	1.0,	3.6,	10.804,	33.01,	99.04},time_ms,stain_e,strain_coeffic=1,Tem_V;
volatile float Temper,typeSgain_uiAdc8320Value;
double uiAdc8320Value_Hz_mean_STD;										
uint8_t gucGainTable[8]
										={0x02,		0x0e,	0x03,	0x0f,		0x00,		0x0c,0x07,0x80};
uint32_t guiTimer0Period[57] = {(12000000UL)/800,(12000000UL)/1000,(12000000UL)/1200,(12000000UL)/1400,(12000000UL)/1600,(12000000UL)/1800,(12000000UL)/2000,(12000000UL)/2200,(12000000UL)/2400,(12000000UL)/2600,(12000000UL)/2800,(12000000UL)/3000,(12000000UL)/3200,(12000000UL)/3400,(12000000UL)/3600,(12000000UL)/3800,(12000000UL)/4000,
	(12000000UL)/4200,(12000000UL)/4400,(12000000UL)/4600,(12000000UL)/4800,(12000000UL)/5000,(12000000UL)/5200,(12000000UL)/5400,(12000000UL)/5600,(12000000UL)/5800,(12000000UL)/6000,(12000000UL)/6200,(12000000UL)/6400,(12000000UL)/6600,(12000000UL)/6800,(12000000UL)/7000,(12000000UL)/7200,(12000000UL)/7400,(12000000UL)/7600,(12000000UL)/7800,(12000000UL)/8000,
	(12000000UL)/8200,	(12000000UL)/8400,(12000000UL)/8600,(12000000UL)/8800,(12000000UL)/9000,(12000000UL)/9200,(12000000UL)/9400,(12000000UL)/9600,(12000000UL)/9800,(12000000UL)/10000,(12000000UL)/10200,(12000000UL)/10400,(12000000UL)/10600,(12000000UL)/10800,(12000000UL)/11000,(12000000UL)/11200,(12000000UL)/11400,(12000000UL)/11600,(12000000UL)/11800,(12000000UL)/12000};
	
	
	
	
volatile uint32_t stri_counter=100,ADC_check_Count[8]={0},bat_AD_data,Hz_data;
volatile uint32_t gucT0Index=0,gucindex_range=4,button_range_min=0,button_range_max=56,bat_data;
uint32_t u32Addr = 0x1f000,language_addr=0x1f300,unit_addr=0x1f600;
 uint32_t uiAdc8320Value,typeS_uiAdc8320Value,uiAdc8320Value_offset;
 uint32_t u32iPortStatus,uiTimerCounter,while_counter,while_counter1,current_count=0,current_value=0,current_total=0;
volatile uint32_t u32iOutputVoltage;
										
volatile uint32_t g_au32TMRINTCount[4] = {0};

float g_au32TMR1Count[200],gucOutputVoltage,uiAdc8320Value_ff;
volatile uint32_t u32InitCount,g_u32AdcIntFlag;
 float min_freq_timer,max_freq_timer,min_freq,max_freq;
uint32_t g_au32HzMaxMin[2]={0};
volatile uint8_t interrupt_left=0,select_freq_range=0,select_freq_range2,interrupt_right,select_command=0,interrupt_enter_command[3],Hz_thou,Hz_hun,Hz_tens,Hz_ones,uE_thou,uE_hun,uE_tens,uE_ones,mS_thou,mS_hun,mS_tens,mS_ones,gain_coe,Hz_pointone,uE_pointone,mS_pointone;
volatile uint8_t enter_i,select_command_success,select_type,timer0_check,dig3_hun,dig3_ten,dig3_one,dig3_pointone,dig3_pointtwo,dig3_pointthree,dig_thou,dig_hun,dig_tens,dig_ones,dig_zeros,dig_pointzeros,dig_pointones,dig2_thouthou,dig2_hunthou,dig2_tenthou,dig2_thou,dig2_hun,dig2_tens,dig2_ones,dig2_zeros,Temper_tens,Temper_ones,Temper_point,language_select=0,language=0;










#line 84 "..\\main.c"

int ADC_data_ac(void);
void electronic(char select_type,char gucOutputVoltagePeak);
void display_select(char dis_i);
void Write_one_bit(char d);
void WriteData(char instruction,char hdata,char ldata);
void Clear_button(char button);
void button_select(void);
void Clear_CGROM(void);
void Clear_GDRAM(void);
void AdcSingleModeTest(void);
void bat_dis(void);





void delay_time(int timer)
{
	int delay_i;
	for(delay_i=0;delay_i<timer;delay_i++){};
}



unsigned char pic2[64][16]=
{
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x03,0xf0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x0f,0xfe,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x1f,0xff,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

0x00,0x00,0x00,0x7f,0xff,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0xff,0xff,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x01,0xc0,0x7f,0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x03,0x00,0x1f,0xc0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x04,0x00,0x0f,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x18,0x00,0x07,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x38,0x00,0x07,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x20,0x00,0x03,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,

0x00,0x00,0x00,0x00,0x03,0xc0,0xfe,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x00,0x00,0x03,0xc1,0xff,0x80,0x00,0x00,0x10,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x01,0xfc,0x03,0xc3,0x00,0xc0,0x03,0x80,0x70,0x00,0x00,0x7f,0x80,0x00,
0x00,0x00,0x03,0xfc,0x03,0x86,0x00,0x7f,0xcf,0xe1,0xf0,0x00,0x00,0x7f,0x80,0x00,
0x00,0x00,0x07,0xf8,0x03,0x8c,0x00,0x3f,0xff,0xf3,0xd0,0x00,0x00,0x71,0x80,0x00,
0x00,0x00,0x0f,0xf0,0x03,0x0c,0x3c,0x60,0x70,0x1f,0x10,0xf0,0x1f,0x71,0xf0,0x00,
0x00,0x00,0x19,0xe0,0x03,0x18,0x3f,0x80,0x20,0x0c,0x11,0xfc,0x3f,0xf1,0xf8,0x00,
0x00,0x00,0x10,0x5f,0xff,0xf8,0x7f,0x8e,0x21,0x04,0x1f,0x06,0x70,0xf1,0x8c,0x00,

0x00,0x00,0x30,0x3f,0xff,0xf8,0x40,0x00,0x03,0x84,0x1e,0x03,0x80,0x71,0x06,0x00,
0x00,0x00,0x70,0x7f,0xfc,0x00,0x40,0x00,0x03,0x80,0x00,0x01,0x84,0x30,0x06,0x00,
0x00,0x00,0x71,0xff,0xff,0xf8,0x3c,0x0f,0xe3,0x8c,0x18,0x71,0x0e,0x30,0x86,0x00,
0x00,0x00,0xf3,0xff,0xff,0xfc,0x18,0x04,0x21,0x0c,0x18,0x01,0x0f,0xf1,0xc6,0x00,
0x00,0x3f,0xff,0xff,0xf0,0x0c,0x00,0x00,0x20,0x1c,0x18,0x01,0x0f,0xf1,0xc6,0x00,
0x00,0x00,0xf8,0x00,0x00,0x06,0x00,0x60,0xf8,0x7c,0x18,0x7f,0x8f,0xf1,0xc6,0x00,
0x00,0x00,0xfc,0x00,0x40,0x03,0x83,0xff,0xdf,0xf6,0x00,0x00,0x84,0x01,0xc7,0xe0,
0x00,0x00,0xfe,0x01,0x80,0x01,0xff,0x80,0x03,0x06,0x00,0x00,0x00,0x01,0xc7,0xe0,

0x00,0x00,0xff,0x03,0x00,0x00,0x7c,0x00,0x00,0x07,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0xff,0xfe,0x00,0x00,0x00,0x00,0x00,0x03,0xff,0xff,0xff,0xff,0xff,0xe0,
0x00,0x00,0x7f,0xfc,0x00,0x00,0x00,0x00,0x00,0x00,0xff,0xff,0xff,0xff,0xff,0xe0,
0x00,0x00,0x3f,0xf0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x1f,0xe0,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
0x00,0x00,0x0f,0x80,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
};



void CGROM()
{
	unsigned char i,j,x=0,c=0,d=0; 

	
	WriteData(0xf8,0x80,0x00); 
	for(j=0;j<2;j++)
	{
	for(i=1;i<=8;i++)
 		{
 			WriteData(0xfa,0xa0,0x60);
			c=(0xD0+x)&0xf0;
			d=((0xD0+x)<<4)&0xf0;
			WriteData(0xfa,c,d);

			x++;
		}
	}
	WriteData(0xf8,0x90,0x00);
		for(j=0;j<2;j++)
	{
	x=0;
	for(i=1;i<=8;i++)
 		{
 			WriteData(0xfa,0xd0,0x10);


			c=(0x40+x)&0xf0;
			d=((0x40+x)<<4)&0xf0;
			WriteData(0xfa,c,d);
			x++;
		}
	}
}



void HCGROM()
{
	
	
    WriteData(0xf8,0x90,0x10); 
	
		WriteData(0xfa,0x40,0x20);
		WriteData(0xfa,0x40,0x90);
		WriteData(0xfa,0x40,0x70);
		WriteData(0xfa,0x30,0x50);
	
}




void Show_Graphic()
{
	unsigned char i,j,c,d;
	
	
	WriteData(0xf8,0x30,0xe0); 
	delay_time(800);
	Clear_GDRAM();
	for (j=0;j<32;j++)
	{	
	c=(0x80+j)&0xf0;
	d=((0x80+j)<<4)&0xf0;
	WriteData(0xf8,c,d);
		delay_time(800);
	WriteData(0xf8,0x80,0x00);
		delay_time(800);
		for (i=0;i<16;i++)
	  {
	
		c=pic2[j][i]&0xf0;
		d=(pic2[j][i]<<4)&0xf0;
		WriteData(0xfa,c,d);
			delay_time(800);
	  }
		for (i=0;i<16;i++)
 	  {
			
			c=pic2[32+j][i]&0xf0;
		    d=(pic2[32+j][i]<<4)&0xf0;
		    WriteData(0xfa,c,d);
			delay_time(800);
	  }
	}

}
void electronic(char select_type,char gucOutputVoltagePeak)
{
	Clear_CGROM();
	delay_time(10000);
	if(language_select==0)
	{
	if(select_type=='A')
	{
		
		WriteData(0xf8,0x80,0x00); 
	delay_time(800);
		  WriteData(0xfa,0x40,0x50);
	delay_time(800);
			WriteData(0xfa,0x70,0x80);
	delay_time(800);
			WriteData(0xfa,0x60,0x30);
	delay_time(800);
			WriteData(0xfa,0x60,0x80);
	delay_time(800);
			WriteData(0xfa,0x60,0x10);
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);
	delay_time(800);
			WriteData(0xfa,0x60,0x70);
	delay_time(800);
			WriteData(0xfa,0x60,0x50);
	delay_time(800);
		if(gucOutputVoltagePeak==0x66)
		{
	WriteData(0xf8,0x80,0x60); 
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x4E)
		{
	WriteData(0xf8,0x80,0x60); 
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); 
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}	
		else if(select_type=='C')
	{
		WriteData(0xf8,0x80,0x00); 
	delay_time(800);
		WriteData(0xfa,0x30,0x40);
	delay_time(800); 
		 WriteData(0xfa,0x20,0xd0);
	delay_time(800);	
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x30,0x00);
	delay_time(800);
			WriteData(0xfa,0x60,0xd0);
	delay_time(800);
			WriteData(0xfa,0x40,0x10);
	delay_time(800);
		if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); 
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}
	else if(select_type=='D')
	{
		WriteData(0xf8,0x80,0x00); 
	delay_time(800);
		WriteData(0xfa,0x40,0x50);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);
	delay_time(800);
			WriteData(0xfa,0x60,0x50);
	delay_time(800);
			WriteData(0xfa,0x60,0x30);
	delay_time(800);
			WriteData(0xfa,0x70,0x40);
	delay_time(800);
			WriteData(0xfa,0x70,0x20);
	delay_time(800);	
			WriteData(0xfa,0x60,0xf0);
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);
	delay_time(800);
			WriteData(0xfa,0x60,0x90);
	delay_time(800);
			WriteData(0xfa,0x60,0x30);
	delay_time(800);
		if(gucOutputVoltagePeak==0x66)
		{
	WriteData(0xf8,0x80,0x60); 
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x4E)
		{
	WriteData(0xf8,0x80,0x60); 
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); 
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}
}
	if(language_select==1)
	{
	if(select_type=='A')
	{
		
		WriteData(0xf8,0x80,0x20); 
	delay_time(800);
		  WriteData(0xfa,0xa0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x70,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x80);
	delay_time(800);
			WriteData(0xfa,0x40,0x70);
	delay_time(800);
 			WriteData(0xfa,0xa0,0xd0);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);
	delay_time(800);
		if(gucOutputVoltagePeak==0x66)
		{
	WriteData(0xf8,0x80,0x60); 
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x4E)
		{
	WriteData(0xf8,0x80,0x60); 
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); 
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}	
	else if(select_type=='C')
	{
		WriteData(0xf8,0x80,0x00); 
	delay_time(800);
		WriteData(0xfa,0x30,0x40);
	delay_time(800); 
		 WriteData(0xfa,0x20,0xd0);
	delay_time(800);	
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x30,0x00);
	delay_time(800);
			WriteData(0xfa,0x60,0xd0);
	delay_time(800);
			WriteData(0xfa,0x40,0x10);
	delay_time(800);
		if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); 
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}
	else if(select_type=='D')
	{
		WriteData(0xf8,0x80,0x20); 
	delay_time(800);
		WriteData(0xfa,0xd0,0x30);
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0xc0);
	delay_time(800);
			WriteData(0xfa,0xe0,0xf0);
	delay_time(800);
			WriteData(0xfa,0xa0,0xd0);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);
	delay_time(800);
		if(gucOutputVoltagePeak==0x66)
		{
	WriteData(0xf8,0x80,0x60); 
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x4E)
		{
	WriteData(0xf8,0x80,0x60); 
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
		else if(gucOutputVoltagePeak==0x09)
		{
		WriteData(0xf8,0x80,0x60); 
	delay_time(800);
		  WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);			
		}
	}
}
}

void vibrating_wire(char ss)
{
	if(ss==0){
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xc0,0xf0);
	delay_time(800);
	}
	if(ss==1){
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	}
	if(ss==2){
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xd0,0x10);
	delay_time(800);
	}
	if(ss==3){
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xd0,0x20);
	delay_time(800);
	}
	if(ss==4){
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xd0,0x30);
	delay_time(800);
	}
	if(ss==5){
	WriteData(0xf8,0x90,0x10);
	delay_time(800);
	WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
	WriteData(0xfa,0xd0,0x40);
	delay_time(800);
	}
}


void Page_1()
{
		
	Page_1_1_=0;
	if(language_select==0)
		{
	WriteData(0xf8,0x30,0x00); 
	delay_time(800);
	
  WriteData(0xf8,0x80,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
		WriteData(0xf8,0x80,0x60);
				delay_time(800);
		WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);	
	WriteData(0xf8,0x80,0x10); 
	delay_time(800);
 			WriteData(0xfa,0x40,0x50);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);
	delay_time(800);
			WriteData(0xfa,0x60,0x50);
	delay_time(800);
			WriteData(0xfa,0x60,0x30);
	delay_time(800);
			WriteData(0xfa,0x70,0x40);
	delay_time(800);
			WriteData(0xfa,0x70,0x20);
	delay_time(800);	
			WriteData(0xfa,0x60,0xf0);
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);
	delay_time(800);
			WriteData(0xfa,0x60,0x90);
	delay_time(800);
			WriteData(0xfa,0x60,0x30);
	delay_time(800);
	
	WriteData(0xf8,0x90,0x10); 
	delay_time(800);
 			WriteData(0xfa,0x40,0x50);
	delay_time(800);
			WriteData(0xfa,0x70,0x80);
	delay_time(800);
			WriteData(0xfa,0x60,0x30);
	delay_time(800);
			WriteData(0xfa,0x60,0x80);
	delay_time(800);
			WriteData(0xfa,0x60,0x10);
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);
	delay_time(800);
			WriteData(0xfa,0x60,0x70);
	delay_time(800);
			WriteData(0xfa,0x60,0x50);
	delay_time(800);
			
			
	WriteData(0xf8,0x80,0x90);
	delay_time(800);	  
	    WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x50,0x70);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x50,0x30);
	delay_time(800);
			WriteData(0xfa,0x60,0x50);
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);
	delay_time(800);
			WriteData(0xfa,0x70,0x30);
	delay_time(800);
			WriteData(0xfa,0x60,0xf0);
	delay_time(800);
			WriteData(0xfa,0x70,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			
			
 	WriteData(0xf8,0x90,0x90);
  delay_time(800);	
      WriteData(0xfa,0x30,0x40);
	delay_time(800); 
		 WriteData(0xfa,0x20,0xd0);
	delay_time(800);	
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x30,0x00);
	delay_time(800);
			WriteData(0xfa,0x60,0xd0);
	delay_time(800);
			WriteData(0xfa,0x40,0x10);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x10,0xf0);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			
			
	
	}		
	
	if(language_select==1)
		{
	WriteData(0xf8,0x30,0x00); 
	delay_time(800);
	WriteData(0xf8,0x80,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
		WriteData(0xf8,0x80,0x60);
				delay_time(800);
		WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);
	WriteData(0xf8,0x80,0x10); 
	delay_time(800);
 			WriteData(0xfa,0xd0,0x30);
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x50);
	delay_time(800);
			WriteData(0xfa,0xc0,0xe0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x20);
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
			
	WriteData(0xf8,0x90,0x10);
	delay_time(800);	  
	    WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0x60,0x10);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x80);
	delay_time(800);
			WriteData(0xfa,0x40,0x70);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
 			WriteData(0xfa,0xc0,0x20);
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
			
			
 	WriteData(0xf8,0x80,0x90);
  delay_time(800);	
      WriteData(0xfa,0xa0,0xf0);
	delay_time(800);
			WriteData(0xfa,0x50,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xa0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xf0,0x60);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x20);
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
	
	
	WriteData(0xf8,0x90,0x90);
  delay_time(800);
			 	
      WriteData(0xfa,0xd0,0x30);
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x80);
	delay_time(800);
			WriteData(0xfa,0x40,0x70);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x20);
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			
			
			WriteData(0xfa,0x10,0xf0);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
	}		
			
}void Page_1_1()
{
		
	Page_1_1_=1;
	if(language_select==0)
		{
	WriteData(0xf8,0x30,0x00); 
	delay_time(800);
					
  WriteData(0xf8,0x90,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x80,0x10); 
	delay_time(800);
 			WriteData(0xfa,0x40,0x50);
	delay_time(800);
			WriteData(0xfa,0x70,0x80);
	delay_time(800);
			WriteData(0xfa,0x60,0x30);
	delay_time(800);
			WriteData(0xfa,0x60,0x80);
	delay_time(800);
			WriteData(0xfa,0x60,0x10);
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);
	delay_time(800);
			WriteData(0xfa,0x60,0x70);
	delay_time(800);
			WriteData(0xfa,0x60,0x50);
	delay_time(800);
		
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x10,0xe0);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
	
	
	WriteData(0xf8,0x90,0x10); 
	delay_time(800);
 			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x50,0x70);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x50,0x30);
	delay_time(800);
			WriteData(0xfa,0x60,0x50);
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);
	delay_time(800);
			WriteData(0xfa,0x70,0x30);
	delay_time(800);
			WriteData(0xfa,0x60,0xf0);
	delay_time(800);
			WriteData(0xfa,0x70,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			
			
	WriteData(0xf8,0x80,0x90);
	delay_time(800);	  
	   WriteData(0xfa,0x30,0x40);
	delay_time(800); 
		 WriteData(0xfa,0x20,0xd0);
	delay_time(800);	
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x30,0x00);
	delay_time(800);
			WriteData(0xfa,0x60,0xd0);
	delay_time(800);
			WriteData(0xfa,0x40,0x10);
	delay_time(800);
			
 	WriteData(0xf8,0x90,0x90);
  delay_time(800);	
      WriteData(0xfa,0x40,0xc0);
	delay_time(800);
			WriteData(0xfa,0x60,0x10);
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);
	delay_time(800);
			WriteData(0xfa,0x60,0x70);
	delay_time(800);
			WriteData(0xfa,0x70,0x50);
	delay_time(800);
			WriteData(0xfa,0x60,0x10);
	delay_time(800);
			WriteData(0xfa,0x60,0x70);
	delay_time(800);
			WriteData(0xfa,0x60,0x50);
	delay_time(800);
	}		
	
	if(language_select==1)
		{
	WriteData(0xf8,0x30,0x00); 
	delay_time(800);
	WriteData(0xf8,0x90,0x80);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x80,0x10); 
	delay_time(800);
				
      WriteData(0xfa,0xb0,0xf0);
	delay_time(800);
			WriteData(0xfa,0x70,0xa0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x80);
	delay_time(800);
			WriteData(0xfa,0x40,0x70);
	delay_time(800);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
 			WriteData(0xfa,0xc0,0x20);
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0x10,0xe0);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			
	WriteData(0xf8,0x90,0x10);
	delay_time(800);	  
	    WriteData(0xfa,0xa0,0xf0);
	delay_time(800);
			WriteData(0xfa,0x50,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xa0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xf0,0x60);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x20);
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);
			
			
 	WriteData(0xf8,0x80,0x90);
  delay_time(800);	
      WriteData(0xfa,0xd0,0x30);
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x80);
	delay_time(800);
			WriteData(0xfa,0x40,0x70);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x20);
	delay_time(800);
			WriteData(0xfa,0x70,0xe0);
	delay_time(800);			
			
	
	
	WriteData(0xf8,0x90,0xa0);
  delay_time(800);
			WriteData(0xfa,0xd0,0x40);
	delay_time(800);
			WriteData(0xfa,0x50,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xc0,0x40);
	delay_time(800);
			WriteData(0xfa,0x60,0x20);
	delay_time(800);
	}		
			
}
void Page_2()
{
	
	
	if(language_select==0)
	{
		
	WriteData(0xf8,0x30,0x00); 
	delay_time(800);
	WriteData(0xf8,0x80,0x10);
	delay_time(800);
WriteData(0xfa,0x50,0x60);
	delay_time(800);
WriteData(0xfa,0x60,0xf0);
	delay_time(800);
WriteData(0xfa,0x60,0xc0);
	delay_time(800);
WriteData(0xfa,0x70,0x40);
	delay_time(800);
WriteData(0xfa,0x60,0x10);
	delay_time(800);
WriteData(0xfa,0x60,0x70);
	delay_time(800);
WriteData(0xfa,0x60,0x50);
	delay_time(800);
WriteData(0xfa,0x20,0x00);
	delay_time(800);
WriteData(0xfa,0x70,0x30);
	delay_time(800);
WriteData(0xfa,0x60,0x50);
	delay_time(800);
WriteData(0xfa,0x60,0xc0);
	delay_time(800);
WriteData(0xfa,0x60,0x50);
	delay_time(800);	
WriteData(0xfa,0x60,0x30);
	delay_time(800);
WriteData(0xfa,0x70,0x40);
	delay_time(800);		
WriteData(0xf8,0x90,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x90,0x10); 
	delay_time(800);
	if(interrupt_enter_command[0]==1)
	{
		WriteData(0xfa,0x40,0x50);
	delay_time(800);
			WriteData(0xfa,0x40,0xc0);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x70,0x30);
	delay_time(800);
		WriteData(0xfa,0x60,0x50);
	delay_time(800);
		WriteData(0xfa,0x60,0xe0);
	delay_time(800);
		WriteData(0xfa,0x70,0x30);
	delay_time(800);
		WriteData(0xfa,0x60,0xf0);
	delay_time(800);
		WriteData(0xfa,0x70,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
}
		else{
 			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
	WriteData(0xf8,0x80,0x90);
	delay_time(800);	  
	    WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
	
			
 	WriteData(0xf8,0x90,0x90);	
	delay_time(800);
      WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
	}
	if(language_select==1)
	{
	  WriteData(0xf8,0x30,0x00); 
	delay_time(800);
	WriteData(0xf8,0x80,0x20);
	delay_time(800);
WriteData(0xfa,0xb0,0xe0);
	delay_time(800);
WriteData(0xfa,0xf0,0x90);
	delay_time(800);
WriteData(0xfa,0xd0,0x20);
	delay_time(800);
WriteData(0xfa,0xc0,0x80);
	delay_time(800);
WriteData(0xfa,0xd0,0x50);
	delay_time(800);
WriteData(0xfa,0x50,0xf0);
	delay_time(800);
WriteData(0xfa,0xa0,0xd0);
	delay_time(800);
WriteData(0xfa,0xc0,0x60);
	delay_time(800);
	
WriteData(0xf8,0x90,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x90,0x10); 
	delay_time(800);
 			if(interrupt_enter_command[0]==1)
	{
		WriteData(0xfa,0x40,0x50);
	delay_time(800);
			WriteData(0xfa,0x40,0xc0);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			WriteData(0xfa,0x70,0x30);
	delay_time(800);
		WriteData(0xfa,0x60,0x50);
	delay_time(800);
		WriteData(0xfa,0x60,0xe0);
	delay_time(800);
		WriteData(0xfa,0x70,0x30);
	delay_time(800);
		WriteData(0xfa,0x60,0xf0);
	delay_time(800);
		WriteData(0xfa,0x70,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
	}
		else{
 			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
		}
	
	WriteData(0xf8,0x80,0x90);
	delay_time(800);	  
	    WriteData(0xfa,0x30,0x50);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
	
			
 	WriteData(0xf8,0x90,0x90);	
	delay_time(800);
      WriteData(0xfa,0x30,0x10);
	delay_time(800);
			WriteData(0xfa,0x30,0x20);
	delay_time(800);
			WriteData(0xfa,0x50,0x60);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);	
	}
}
void Page_set()
{
	
	if(language_select==0)
	{
	WriteData(0xf8,0x30,0x00); 
	delay_time(800);
	WriteData(0xf8,0x80,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x80,0x20); 
	delay_time(800);
 			WriteData(0xfa,0x40,0x50);
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);
	delay_time(800);
			WriteData(0xfa,0x60,0x70);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);
	delay_time(800);
	    WriteData(0xfa,0x60,0x90);
	delay_time(800);
			WriteData(0xfa,0x70,0x30);
	delay_time(800);
			WriteData(0xfa,0x60,0x80);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
			
 	WriteData(0xf8,0x90,0x20);
	delay_time(800);	 
      WriteData(0xfa,0x40,0x30);
	delay_time(800);
			WriteData(0xfa,0x60,0x80);
	delay_time(800);
			WriteData(0xfa,0x60,0x90);
	delay_time(800);
			WriteData(0xfa,0x60,0xe0);
	delay_time(800);
			WriteData(0xfa,0x60,0x50);
	delay_time(800);
			WriteData(0xfa,0x70,0x30);
	delay_time(800);
			WriteData(0xfa,0x60,0x50);
	delay_time(800);
			WriteData(0xfa,0x20,0x00);
	delay_time(800);
	}
	if(language_select==1)
	{
	WriteData(0xf8,0x30,0x00); 
	delay_time(800);
	WriteData(0xf8,0x80,0x00);
	delay_time(800);
		WriteData(0xfa,0xb0,0x90);
	delay_time(800);
		WriteData(0xfa,0xb0,0xb0);
	delay_time(800);
	WriteData(0xf8,0x80,0x20); 
	delay_time(800);
 			WriteData(0xfa,0xc0,0x40);
	delay_time(800);
			WriteData(0xfa,0xc0,0x50);
	delay_time(800);
			WriteData(0xfa,0xa0,0x10);
	delay_time(800);
			WriteData(0xfa,0xd0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x50);
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x10);
	delay_time(800);
			WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	  
			
 	WriteData(0xf8,0x90,0x20);
	delay_time(800);	 
      WriteData(0xfa,0xb0,0x10);
	delay_time(800);
			WriteData(0xfa,0xe0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x10);
	delay_time(800);
			WriteData(0xfa,0xd0,0x00);
	delay_time(800);
			WriteData(0xfa,0xb0,0x50);
	delay_time(800);
			WriteData(0xfa,0xd0,0x20);
	delay_time(800);
			
	}
}

void Clear_CGROM(void)
{
	unsigned char j;
	
	WriteData(0xf8,0x80,0x00);
	delay_time(800);
	for (j=0;j<32;j++)
	{	
		WriteData(0xfa,0xa0,0x10);
		delay_time(800);
		WriteData(0xfa,0xd0,0x00);
		delay_time(800);
		
	}
}
void button_select(void)
{
		if(enter_i==0)
		{
			if(select_command==0)
			{
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
				WriteData(0xf8,0x80,0x60);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x80,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				
			}
			else if(select_command==1)
			{
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
				WriteData(0xf8,0x90,0x60);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);
				
				WriteData(0xf8,0x80,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
			}
			else if(select_command==2)
			{
	
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x80,0x80);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
				WriteData(0xf8,0x80,0xe0);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
			}
			else if(select_command==3)
			{
	WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x60);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x80,0x80);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x80,0xe0);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				
				WriteData(0xf8,0x90,0x80);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xd0);
				delay_time(800);
				WriteData(0xf8,0x90,0xe0);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0x50,0xe0);
				delay_time(800);
			}
		}
			if(enter_i==1)
			{
				if(select_command==0)
			{
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0xb0,0xb0);
				delay_time(800);
				WriteData(0xf8,0x80,0xe0);
				delay_time(800);
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
	WriteData(0xfa,0xa0,0x10);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x80,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x90,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
			}
			else if(select_command==1)
			{
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0xb0,0xb0);
				delay_time(800);
	WriteData(0xf8,0x80,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x90,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
			}
			else if(select_command==2)
			{
	
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
	WriteData(0xfa,0xa0,0x10);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x80,0x80);
	delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0xb0,0xb0);
				delay_time(800);
	WriteData(0xf8,0x90,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
			}
			else if(select_command==3)
			{
	
				WriteData(0xf8,0x80,0x00);
				delay_time(800);
				WriteData(0xfa,0xa0,0x10);
				delay_time(800);
				WriteData(0xfa,0xd0,0x00);
				delay_time(800);
				WriteData(0xf8,0x90,0x00);
				delay_time(800);
	WriteData(0xfa,0xa0,0x10);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x80,0x80);
	delay_time(800);
	WriteData(0xfa,0xa0,0x10);
	delay_time(800);
	WriteData(0xfa,0xd0,0x00);
	delay_time(800);
	WriteData(0xf8,0x90,0x80);
	delay_time(800);
				WriteData(0xfa,0xb0,0x90);
				delay_time(800);
				WriteData(0xfa,0xb0,0xb0);
				delay_time(800);
			}
					
			}
	
}



void Write_one_bit(char d)
{
	
         unsigned char spi_i=0;
		 for (spi_i = 0; spi_i < 8; spi_i++)
         {
         
         	(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(2))) + ((3)<<2)))) = 0;
						delay_time(0);
					
		  if( ((d <<spi_i )& 0x80))(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(2))) + ((2)<<2)))) =1;
        else (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(2))) + ((2)<<2)))) =0;		
						delay_time(0);
					(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(2))) + ((3)<<2)))) = 1;
					  delay_time(0);
		}
		
}


void WriteData(char instruction,char hdata,char ldata)
{
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(2))) + ((1)<<2))))=1;

		Write_one_bit(instruction);
	  Write_one_bit(hdata);
	  Write_one_bit(ldata);
	
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(2))) + ((1)<<2))))=0;
   

	 
}



void Initial_st7920()
{
	
	WriteData(0xf8,0x30,0x00);
	delay_time(450);
	WriteData(0xf8,0x30,0x00);
	delay_time(450);
	WriteData(0xf8,0x00,0xc0);
	delay_time(450);
	WriteData(0xf8,0x00,0x60);
	delay_time(450);
	WriteData(0xf8,0x00,0x20);
	delay_time(450);
	WriteData(0xf8,0x00,0x10);
	delay_time(450000);
	
}


void Clear_GDRAM()
{
	unsigned char i,j,a,b;
	
	for (j=0;j<32;j++)
	{	
	   a=(0x80+j);
       b=a&0xf0;
	   WriteData(0xf8,b,(a<<4)&0xf0);
	   WriteData(0xf8,0x80,0x00);
		 for (i=0;i<16;i++)
	 	{	
		 	WriteData(0xfa,0x00,0x00);
			WriteData(0xfa,0x00,0x00);
			
		}
	}
}

void display_dig(void)
{ 
	
	unsigned char dig_ii,dig_jj,dig_kk,dig_ll,dig_mm,dig_mmm,dig_mmmm,space_dig_i,space1_dig_i,space2_dig_i,space3_dig_i,space4_dig_i,space5_dig_i,space6_dig_i;
	
	
	   dig_ii=dig_thou;
		 dig_jj=dig_hun;
		 dig_kk=dig_tens;
		 dig_ll=dig_ones;
		 dig_mm=dig_zeros;
	   dig_mmm=dig_pointzeros;
		 dig_mmmm=dig_pointones;	
	u32iPortStatus = ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)))->PIN);
if(gain_uiAdc8320Value>0){
			if(dig_ii==0){space_dig_i=0xa0;dig_ii=1;}else{space_dig_i=0xb0;dig_ii=1;}
			if(dig_jj==0){space1_dig_i=0xa0;dig_jj=0;}else{space1_dig_i=0xb0;}
			if(dig_kk==0){space2_dig_i=0xa0;dig_kk=0;}else{space2_dig_i=0xb0;}
			if(dig_ll==0){space3_dig_i=0xa0;dig_ll=0;}else{space3_dig_i=0xb0;}
			if(dig_mm==0){space4_dig_i=0xa0;dig_mm=0;}else{space4_dig_i=0xb0;}
			if(dig_mmm==0){space5_dig_i=0xa0;dig_mmm=0;}else{space5_dig_i=0xb0;}
			if(dig_mmmm==0){space6_dig_i=0xa0;dig_mmmm=0;}else{space6_dig_i=0xb0;}
			
	if(gucOutputVoltagePeak ==0x09){
		if((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(4))) + ((4)<<2))))){
					
					WriteData(0xf8,0x80,0x80); 
	delay_time(800);
					if(dig_thou!=0){
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
					
 			WriteData(0xfa,space_dig_i,((dig_ii-1)<<4)&0xf0);
	delay_time(800);
					}
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space1_dig_i,((dig_jj-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space2_dig_i,((dig_kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space3_dig_i,((dig_ll-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space4_dig_i,((dig_mm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0x90);
	delay_time(800);
 			WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space5_dig_i,((dig_mmm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space6_dig_i,((dig_mmmm-1)<<4)&0xf0);
	delay_time(800);
		
		
	}
	else {
		WriteData(0xf8,0x80,0x80); 
	delay_time(800);
		  
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
 			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
		if(dig_thou!=0){
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_dig_i,((dig_ii-1)<<4)&0xf0);
	delay_time(800);
		}
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space1_dig_i,((dig_jj-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space2_dig_i,((dig_kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space3_dig_i,((dig_ll-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space4_dig_i,((dig_mm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0x90);
	delay_time(800);
 			WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space5_dig_i,((dig_mmm-1)<<4)&0xf0);
	delay_time(800);
					if(dig_thou<1)
					{
						WriteData(0xfa,0xc0,0xa0);
						delay_time(800);
						WriteData(0xfa,space6_dig_i,((dig_mmmm-1)<<4)&0xf0);
						delay_time(800);
					}
			
	 
	}
}else{
WriteData(0xf8,0x80,0x80); 
	delay_time(800);
					
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
					
 			WriteData(0xfa,space_dig_i,((dig_ii-1)<<4)&0xf0);
	delay_time(800);
					
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space1_dig_i,((dig_jj-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space2_dig_i,((dig_kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space3_dig_i,((dig_ll-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space4_dig_i,((dig_mm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0x90);
	delay_time(800);
 			WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space5_dig_i,((dig_mmm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space6_dig_i,((dig_mmmm-1)<<4)&0xf0);
	delay_time(800);
}		
	WriteData(0xf8,0x90,0xd0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
	
}

else {
	
     
	WriteData(0xf8,0x80,0x90); 
	delay_time(800);
		
 			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	
	WriteData(0xf8,0x90,0xd0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x00);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
	
	}
}
void display_dig3(void)
{ 
	
	unsigned char dig3_ii,dig3_jj,dig3_kk,dig3_ll,dig3_mm,space_dig3_i,space1_dig3_i,space2_dig3_i,space3_dig3_i,space4_dig3_i;
	   dig3_ii=dig3_ten;
		 dig3_jj=dig3_one;
		 dig3_kk=dig3_pointone;
		 dig3_ll=dig3_pointtwo;
		 dig3_mm = dig3_pointthree;
	
		if(gain_uiAdc8320Value>0){
			if(dig3_ii==0){space_dig3_i=0xa0;dig3_ii=1;}else{space_dig3_i=0xb0;}
			if(dig3_jj==0){space1_dig3_i=0xa0;dig3_jj=0;}else{space1_dig3_i=0xb0;}
			if(dig3_kk==0){space2_dig3_i=0xa0;dig3_kk=0;}else{space2_dig3_i=0xb0;}
			if(dig3_ll==0){space3_dig3_i=0xa0;dig3_ll=0;}else{space3_dig3_i=0xb0;}
			if(dig3_mm==0){space4_dig3_i=0xa0;dig3_mm=0;}else{space4_dig3_i=0xb0;}
		 WriteData(0xf8,0x80,0x80); 
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_dig3_i,((dig3_ii-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space1_dig3_i,((dig3_jj-1)<<4)&0xf0);
	delay_time(800);
			
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space2_dig3_i,((dig3_kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space3_dig3_i,((dig3_ll-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space4_dig3_i,((dig3_mm-1)<<4)&0xf0);
	delay_time(800);
			
			
				
				WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x10);
	delay_time(800);
 			
		
	
	
}

else {
	
     
	WriteData(0xf8,0x80,0x80); 
	delay_time(800);
		
 			
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
				
				WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x10);
	delay_time(800);
 			
			
		}
}
void display_dig2(void)
{ 
	
	
	unsigned char dig2_iii,dig2_ii,dig2_jj,dig2_kk,dig2_ll,dig2_mm,dig2_nn,space_dig2_ii,space_dig2_i,space1_dig2_i,space2_dig2_i,space3_dig2_i,space4_dig2_i,space5_dig2_i;
			dig2_iii=dig2_thouthou;
	   dig2_ii=dig2_hunthou;
		 dig2_jj=dig2_tenthou;
		 dig2_kk=dig2_thou;
		 dig2_ll=dig2_hun;
		 dig2_mm=dig2_tens;
		 dig2_nn=dig2_ones;
if(uiAdc8320Value_ff<13) {
				
			if(dig2_iii==0){space_dig2_ii=0xa0;dig2_iii=1;}else{space_dig2_ii=0xb0;}
			if(dig2_ii==0){space_dig2_i=0xa0;dig2_ii=0;}else{space_dig2_i=0xb0;}
			if(dig2_jj==0){space1_dig2_i=0xa0;dig2_jj=0;}else{space1_dig2_i=0xb0;}
			if(dig2_kk==0){space2_dig2_i=0xa0;dig2_kk=0;}else{space2_dig2_i=0xb0;}
			if(dig2_ll==0){space3_dig2_i=0xa0;dig2_ll=0;}else{space3_dig2_i=0xb0;}
			if(dig2_mm==0){space4_dig2_i=0xa0;dig2_mm=0;}else{space4_dig2_i=0xb0;}
			if(dig2_nn==0){space5_dig2_i=0xa0;dig2_nn=0;}else{space5_dig2_i=0xb0;}
		
					
		 WriteData(0xf8,0x80,0x80); 
	delay_time(800);
			
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_dig2_ii,((dig2_iii-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_dig2_i,((dig2_ii-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xc0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space1_dig2_i,((dig2_jj-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space2_dig2_i,((dig2_kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space3_dig2_i,((dig2_ll-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space4_dig2_i,((dig2_mm-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space5_dig2_i,((dig2_nn-1)<<4)&0xf0);
	delay_time(800);
	
	if(language_select==0)
			{	
		if(gucOutputVoltagePeak==0x66)		
			{
	WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);
	delay_time(800);
			}else{
						 WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
			
						}
		
			}
	else{
		if(gucOutputVoltagePeak==0x66)		
			{
	WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);
	delay_time(800);
			}else
			{
						 WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
			
		}
	}
}
				
else {
	
     
		 WriteData(0xf8,0x80,0x90); 
	delay_time(800);
		
 			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
if(language_select==0)
{	
	if(gucOutputVoltagePeak==0x66)		
			{
	WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);
	delay_time(800);
			}else{
						 WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
						}
}else{
				if(gucOutputVoltagePeak==0x66)		
			{
	WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);
	delay_time(800);
						}else{
						 WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x60);
	delay_time(800);
			
						}
		
				}
		}
}
void Temper_dis(void)
{ unsigned char tem_xx,tem_yy,tem_zz,space_tem_i;
	   tem_xx=Temper_tens;
		 tem_yy=Temper_ones;
		 tem_zz=Temper_point;
		
		if(tem_xx==0){space_tem_i=2;}else{space_tem_i=3;}
		 WriteData(0xf8,0x80,0x50); 
	delay_time(800);
		
 			WriteData(0xfa,(space_tem_i<<4)&0xff,(tem_xx<<4)&0xff);
	delay_time(800);
			WriteData(0xfa,0x30,(tem_yy<<4)&0xff);
	delay_time(800);
			WriteData(0xfa,0x20,0xe0);
	delay_time(800);
			WriteData(0xfa,0x30,(tem_zz<<4)&0xff);
	delay_time(800);
		
			WriteData(0xfa,0xa0,0x10);
	delay_time(800);
			WriteData(0xfa,0xa0,0xf0);
	delay_time(800);
			
	
}
void bat_dis(void)
{ 
	
unsigned char bat_hun=0,bat_ten=0,bat_one=0,space_tem_i=0;
			bat_hun = bat_data/100;
			bat_ten = (bat_data-(bat_hun*100))/10;
			bat_one = (bat_data-(bat_hun*100)-(bat_ten*10))/1;
		
		if(bat_hun==0){space_tem_i=2;}else{space_tem_i=3;}
		 WriteData(0xf8,0x90,0x80); 
	delay_time(800);
			WriteData(0xfa,0x40,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0x10);
	delay_time(800);
			WriteData(0xfa,0x70,0x40);
	delay_time(800);
			WriteData(0xfa,0x30,0xa0);
	delay_time(800);
 			WriteData(0xfa,(space_tem_i<<4)&0xff,(bat_hun<<4)&0xff);
	delay_time(800);
			WriteData(0xfa,0x30,(bat_ten<<4)&0xff);
	delay_time(800);
			WriteData(0xfa,0x30,(bat_one<<4)&0xff);
	delay_time(800);
		
			WriteData(0xfa,0x20,0x50);
	delay_time(800);
			
			
	
}
void display_select(char dis_i)
{
	volatile unsigned char aa=0,bb=0,cc=0,dd=0,ee=0,ff=0,gg=0,hh=0,ii=0,jj=0,kk=0,ll=0,mm=0,nn=0,oo=0,space_aa=0,space_bb=0,space_cc=0,space_dd=0,
	space_ee=0,space_ff=0,space_gg=0,space_hh=0,space_ii=0,space_jj=0,space_kk=0,space_ll=0,space_mm=0,space_nn=0,space_oo=0;
		 aa=Hz_thou;
		 bb=Hz_hun;
		 cc=Hz_tens;
		 dd=Hz_ones;
		 mm=Hz_pointone;
		 ee=uE_thou;
		 ff=uE_hun;
		 gg=uE_tens;
		 hh=uE_ones;
		 nn=uE_pointone;
		 ii=mS_thou;
		 jj=mS_hun;
		 kk=mS_tens;
		 ll=mS_ones;
		 oo=mS_pointone;
	
	if(dis_i==0)
{
	
		if(gain_uiAdc8320Value>0){
			if(aa==0){space_aa=0xa0;aa=1;}else{space_aa=0xb0;aa=Hz_thou;}
			if(bb==0){space_bb=0xa0;bb=0;}else{space_bb=0xb0;bb=Hz_hun;}
			if(cc==0){space_cc=0xa0;cc=0;}else{space_cc=0xb0;cc=Hz_tens;}
			if(dd==0){space_dd=0xa0;dd=0;}else{space_dd=0xb0;dd=Hz_ones;}
			if(mm==0){space_mm=0xa0;mm=0;}else{space_mm=0xb0;mm=Hz_pointone;}
		 WriteData(0xf8,0x80,0x80); 
	delay_time(800);
			
 			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_aa,((aa-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_bb,((bb-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_cc,((cc-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_dd,((dd-1)<<4)&0xf0);
	delay_time(800);
WriteData(0xfa,0xc0,0x90);
	delay_time(800);
	WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,space_mm,((mm-1)<<4)&0xf0);
	delay_time(800);
				
			WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xd0,0x60);
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x40,0x30);
	delay_time(800);
	
}
		else{
			
		 WriteData(0xf8,0x80,0x80); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
 			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
		
		WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,0xd0,0x60);
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x40,0x30);
	delay_time(800);
	
			}
	
}
	else if(dis_i==1)
	{
	
		
		if(gain_uiAdc8320Value>0){
			if(ee==0){space_ee=0xa0;ee=1;}else{space_ee=0xb0;ee=uE_thou;}
			
			if(ff==0){space_ff=0xa0;ff=0;}else{space_ff=0xb0;}
			if(gg==0){space_gg=0xa0;gg=0;}else{space_gg=0xb0;}
			if(hh==0){space_hh=0xa0;hh=0;}else{space_hh=0xb0;}
			if(nn==0){space_nn=0xa0;nn=0;}else{space_nn=0xb0;}
		 WriteData(0xf8,0x80,0x80); 
	delay_time(800);
			
 			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_ee,((ee-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_ff,((ff-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_gg,((gg-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_hh,((hh-1)<<4)&0xf0);
	delay_time(800);
		WriteData(0xfa,0xc0,0x90);
	delay_time(800);
	WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,space_nn,((nn-1)<<4)&0xf0);
	delay_time(800);
	if(select_freq_range==0|select_freq_range==1|select_freq_range==5)
		 {
			 WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);
	delay_time(800); 
			
		 }
		 else{
			 WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x60,0x70);
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x40,0x80);
	delay_time(800);
					}
}
	else{
			
		 WriteData(0xf8,0x80,0x80); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
 			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	if(select_freq_range==0|select_freq_range==1|select_freq_range==5)
		 {
			 WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xa0,0x40);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0x70);
	delay_time(800); 
			
		 }
		 else{
			 WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x60,0x70);
	delay_time(800);
			WriteData(0xfa,0xc0,0xb0);
	delay_time(800);
			WriteData(0xfa,0x40,0x80);
	delay_time(800);
					}
	}
}



else if(dis_i==2)
	{
	
		if(gain_uiAdc8320Value>0){
			if(ii==0){space_ii=0xa0;ii=1;}else{space_ii=0xb0;ii=mS_thou;}
			if(jj==0){space_jj=0xa0;jj=0;}else{space_jj=0xb0;}
			if(kk==0){space_kk=0xa0;kk=0;}else{space_kk=0xb0;}
			if(ll==0){space_ll=0xa0;ll=0;}else{space_ll=0xb0;}
			if(oo==0){space_oo=0xa0;oo=0;}else{space_oo=0xb0;}
		 WriteData(0xf8,0x80,0x80); 
	delay_time(800);
			
 			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_ii,((ii-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_jj,((jj-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_kk,((kk-1)<<4)&0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
 			WriteData(0xfa,space_ll,((ll-1)<<4)&0xf0);
	delay_time(800);
		WriteData(0xfa,0xc0,0x90);
	delay_time(800);
	WriteData(0xfa,0x40,0xf0);
	delay_time(800);
			WriteData(0xfa,0xc0,0xa0);
	delay_time(800);
			WriteData(0xfa,space_oo,((oo-1)<<4)&0xf0);
	delay_time(800);
	
			WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x30);
	delay_time(800);
		
	}		
		else{
			
		 WriteData(0xf8,0x80,0x80); 
	delay_time(800);
			
 			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0x60,0xb0);
	delay_time(800);
	
		WriteData(0xf8,0x90,0xe0); 
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xc0,0xd0);
	delay_time(800);
			WriteData(0xfa,0xa0,0x20);
	delay_time(800);
			WriteData(0xfa,0xb0,0x30);
	delay_time(800);
		
				}
	}

}





	void GPIOP2P3P4_IRQHandler(void)
{   
	char ii;
     
    delay_time(1000000);
    if(((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)))->ISRC & 0x00000010))
    {
			delay_time(1000000);
      ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)))->ISRC = 0x00000010);
			((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)))->DBEN |= 0x00000010);
			button_update=0;
			if(select_command_success)
			{
				if(select_type=='S')
				{
					
					select_freq_range-=1;
				  if(select_freq_range>=6)select_freq_range=5;	
					vibrating_wire(select_freq_range);
					if(select_freq_range==2)
					{ 
						
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=450;
						max_freq =1200;
						strain_coeffic =4.062;
						
					}
					else if(select_freq_range==3)
					{
						
						
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=450;
						max_freq =1200;
						strain_coeffic =3.304;
						
					}
					else if(select_freq_range==1)
					{ 
						
						
						
						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=26;
						min_freq=2000;
						max_freq =3500;
						strain_coeffic =1;
						
					}
					else if(select_freq_range==4)
					{
						
						
						
						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=57;
						min_freq=1500;
						max_freq =6100;
						strain_coeffic =0.39102;
						
					}
					else if(select_freq_range==5)
					{
						
						
						
						button_range_min=gucT0Index=21;
						button_range_max=gucindex_range=57;
						min_freq=2500;
						max_freq =6100;
						strain_coeffic =1;
						
					}
					else if(select_freq_range==0)
					{
						
						
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=57;
						min_freq=450;
						max_freq =6100;
						strain_coeffic =1;
						
					}
				
						
				}
			}else 
			{
				
			
				if((enter_i==1)&&(interrupt_enter_command[0]==4))	
					{
					select_command-=1;
					if(select_command>=2)select_command=1;
						button_select();
					}
			else if((enter_i==1)&&(interrupt_enter_command[0]==3))
			{	
				select_command =3;
				button_select();
			}
			else if(enter_i==1)
				{
				  select_command-=1;
					if(select_command>=4|select_command<1)select_command=3;
					button_select();
					}
			else if(enter_i==2)
				{
					language=0;
					enter_i=0;
					select_type=0;
					select_command=0;
					select_command_success=0;
					g_au32TMRINTCount[1]=60;
								
					Clear_CGROM();
					
					Page_1();
					
				}				
			else {
				
						
						if((Page_1_1_)&&(select_command==4)){
								select_command=2;
							button_select();
							select_command=3;
						}
						else if((Page_1_1_)&&(select_command==3)){
								select_command=1;
							button_select();
							select_command=2;
						}
						else if((Page_1_1_)&&(select_command==2)){
								select_command=0;
							button_select();
							select_command=1;
						}
						else if((Page_1_1_)&&(select_command==1)){
								Clear_CGROM();delay_time(10000);Page_1();select_command=0;
						button_select();	
						}
						
						else{select_command-=1;button_select();}	
								
						if(select_command>4){
									Clear_CGROM();delay_time(10000);Page_1_1();select_command=3;
									button_select();	
							    select_command=4;
							}
					}
			
			}
  
	}
		else if(((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)))->ISRC & 0x00000001))
    {
			delay_time(1000000);
      ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)))->ISRC = 0x00000001);
			((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)))->DBEN |= 0x00000001);
			button_update=0;
			if(select_command_success)
			{
				if(select_type=='S')
				{
					
					select_freq_range+=1;
				if(select_freq_range>=6)select_freq_range=0;
					vibrating_wire(select_freq_range);					
					if(select_freq_range==2)
					{ 
						
						
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=450;
						max_freq =1200;
						strain_coeffic =4.062;
						
					}
					else if(select_freq_range==3)
					{
						
						
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=450;
						max_freq =1200;
						strain_coeffic =3.304;
						
					}
					else if(select_freq_range==1)
					{ 
						
						
						
						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=26;
						min_freq=2000;
						max_freq =3500;
						strain_coeffic =1;
						
					}
					else if(select_freq_range==4)
					{
						
						
						
						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=57;
						min_freq=1500;
						max_freq =6100;
						strain_coeffic =0.39102;
						
					}
					else if(select_freq_range==5)
					{
						
						
						
						button_range_min=gucT0Index=21;
						button_range_max=gucindex_range=57;
						min_freq=2500;
						max_freq =6100;
						strain_coeffic =1;
						
					}
					else if(select_freq_range==0)
					{
						
						
						
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=57;
						min_freq=450;
						max_freq =6100;
						strain_coeffic =1;
						
					}
				
					
				}
			}else 
			{
				
				if((enter_i==1)&&(interrupt_enter_command[0]==4))	
					{
					select_command+=1;
					if(select_command>=2)select_command=0;
						button_select();
					}
			else if((enter_i==1)&&(interrupt_enter_command[0]==3))
			{	
				select_command =3;
				button_select();
			}
			else if(enter_i==1)
				{
				  select_command+=1;
					if(select_command>=4)select_command=1;
					button_select();
					}	
				
			else if(enter_i==2)
				{
					
					enter_i=0;
					select_type=0;
					select_command=0;
					select_command_success=0;
					g_au32TMRINTCount[1]=60;
					Clear_CGROM();				
					Page_1();
				}
				else{
						if((Page_1_1_)&&(select_command==0)){
								select_command=0;
								button_select();
								select_command=1;
							
						}
						else if((Page_1_1_)&&(select_command==1)){
								select_command=1;
								button_select();
								select_command=2;
						}
						else if((Page_1_1_)&&(select_command==2)){
								select_command=2;
								button_select();
								select_command=3;
						}
						
						else{select_command+=1;button_select();}	
								
						if(select_command==4){
									Clear_CGROM();delay_time(10000);Page_1_1();select_command=3;
									button_select();	
							    select_command=4;
							}
							else if(select_command>4){
									Clear_CGROM();delay_time(10000);Page_1();select_command=0;
									button_select();		
									}
							
						
			
			}			
			
			
					
			
		}
    }
    else if(((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)))->ISRC & 0x00000080))
    {
			delay_time(1000000);
      ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)))->ISRC = 0x00000080);
			((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)))->DBEN |= 0x00000080);
			
		  
			interrupt_left++;
			if(interrupt_left>=1){interrupt_left=0;
														(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(2))) + ((4)<<2)))) ^=1;}
      
			
			
			
				
    }
		else if(((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)))->ISRC & 0x00000004))
    {
			delay_time(1000000);
			((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)))->ISRC = 0x00000004);
			((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)))->DBEN |= 0x00000004);
			
			if(select_command_success==0)
			{	
				
				interrupt_enter_command[enter_i]=select_command;
				
				
				
				enter_i++;	
				if(enter_i==1)select_command=1;
				else {select_command=0;}
				if(enter_i==1){
												Clear_CGROM();
												delay_time(10000);
												if(interrupt_enter_command[0]==4)	{
																								Page_set();
																								language=1;
																								select_command=0;
																								
																								}
													
												else if((interrupt_enter_command[0]==2)|(interrupt_enter_command[0]==3))	
												{
													
													
													if(interrupt_enter_command[0]==3)interrupt_enter_command[1]=3;
													if(interrupt_enter_command[0]==2)gucOutputVoltagePeak=0x4E;
													enter_i=0;
					if(interrupt_enter_command[0]==0)select_type ='D';
					else if(interrupt_enter_command[0]==1)select_type ='A';
					else if(interrupt_enter_command[0]==2)select_type ='S';
					else if(interrupt_enter_command[0]==3)select_type ='C';
					
					if(interrupt_enter_command[1]==1)gucOutputVoltagePeak =0x66;
					else if(interrupt_enter_command[1]==2)gucOutputVoltagePeak =0x4E;
					else if(interrupt_enter_command[1]==3)gucOutputVoltagePeak =0x09;
				
				
					
										select_command_success =1;
						        Clear_CGROM();
										delay_time(10000);
																	if(select_type=='S'){
																												vibrating_wire(select_freq_range);
																												gucindex_range=28;
									
																												}
																												
												}													
												else 
													{
															Page_2();
													}
												}
				else if((enter_i==2)&&(language==1)){
														
																		char ii;
																		if(interrupt_enter_command[1]==0){language_select=0;}
																			else{language_select=1;}
																	  for(ii=0;ii<3;ii++)interrupt_enter_command[ii]=0;
																		enter_i=0;
																		select_type=0;
																		select_command=0;
																		select_command_success=0;
																			while_counter=0;
																		Clear_CGROM();
																		delay_time(10000);
																		Page_1();
																		enter_i=0;													
																		language=0;		

			((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON |= (1ul << 0);
				FMC_Erase(language_addr);
				FMC_Write(language_addr, language_select);
				((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON &=  ~(1ul << 0);
																					
																					}	
																
																
																
				
				
				else if(enter_i>=2)
				{	
					enter_i=0;
					if(interrupt_enter_command[0]==0)select_type ='D';
					else if(interrupt_enter_command[0]==1)select_type ='A';
					else if(interrupt_enter_command[0]==2)select_type ='S';
					else if(interrupt_enter_command[0]==3)select_type ='C';
					
					if(interrupt_enter_command[1]==1)gucOutputVoltagePeak =0x66;
					else if(interrupt_enter_command[1]==2)gucOutputVoltagePeak =0x4E;
					else if(interrupt_enter_command[1]==3)gucOutputVoltagePeak =0x09;
				
				
					
										select_command_success =1;
						        Clear_CGROM();
										delay_time(10000);
									if(select_type=='S'){
										vibrating_wire(select_freq_range);
										gucindex_range=select_freq_range;
									
																			}
				
					
					
				}
					
					
					
				

			}else if (select_command_success==1)
			{	
				select_command_success=0;
				for(ii=0;ii<3;ii++)interrupt_enter_command[ii]=0;
				for(ii=0;ii<10;ii++)g_au32ADCCount[ii]=0;
				enter_i=0;
				while_counter=0;
				language=0;
				select_type=0;
				select_command=0;
				select_command_success=0;
				g_au32TMRINTCount[1]=60;
				Clear_CGROM();
				button_update=0;
				delay_time(10000);
			  Page_1();
				delay_time(10000);
				
			}
			
		
    }
		else if(((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)))->ISRC & 0x00000020))
    {
			delay_time(1000000);
      ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)))->ISRC = 0x00000020);
			((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)))->DBEN |= 0x00000020);
		  
        interrupt_right++;
			
			if(interrupt_right>=3)interrupt_right=0;
			
				((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON |= (1ul << 0);
				FMC_Erase(unit_addr);
				FMC_Write(unit_addr, interrupt_right);
				((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON &=  ~(1ul << 0);
			if(enter_i==1)
				{
					
					enter_i=0;
							select_type=0;
							select_command=0;
							select_command_success=0;
							language=0;
							g_au32TMRINTCount[1]=60;
							while_counter=0;
							delay_time(4000);
							Clear_CGROM();
							delay_time(10000);
						  Page_1();
						  delay_time(10000);
					
				}
				else if(enter_i==2)
				{
					
					enter_i=0;
							select_type=0;
							select_command=0;
							select_command_success=0;
							language=0;
							g_au32TMRINTCount[1]=60;
							while_counter=0;
							delay_time(4000);
							Clear_CGROM();
							delay_time(10000);
						  Page_1();
						  delay_time(10000);
					
				}
			
    }
		else
		{
				((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0080))->ISRC = ((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0080))->ISRC;
        ((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0))->ISRC = ((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0))->ISRC;
        ((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100))->ISRC = ((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100))->ISRC;
		}
	
	}

#line 3269 "..\\main.c"
	




void init_ext_ad()
{
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((5)<<2)))) = 1;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((4)<<2)))) = 1;
}


unsigned int read_ext_adc()
{
		int i;
		unsigned int data;
	
		data = 0;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((5)<<2)))) = 0;
	  (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((4)<<2)))) = 1;
		for(i=0;i<5;i++) 
		{
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((4)<<2)))) = 0;
			delay_time(15);
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((4)<<2)))) = 1;
			delay_time(13);
			
		}
		for(i=0;i<16;i++) 
		{
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((4)<<2)))) = 0;
			delay_time(15);
			if ((*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(4))) + ((1)<<2)))))
				data += 1;
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((4)<<2)))) = 1;
			data <<= 1;
			delay_time(13);
			
		}
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((5)<<2)))) = 1;
		for(i=0;i<5;i++) 
		{
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((4)<<2)))) = 0;
			delay_time(15);
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((4)<<2)))) = 1;
			delay_time(13);
			}
		
	  
		
		
			
			
		
		
		return(data);
		
}





void RESET_Gain(void)
{
		gucGainTableIndex = 0;
		u32iPortStatus = ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)))->PIN);
		u32iPortStatus &= 0xfff8;  
		
		
		
		
		u32iPortStatus |= gucGainTable[gucGainTableIndex];
		((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)))->DOUT = (u32iPortStatus));
}
void SET_Gain(unsigned char index)
{
		u32iPortStatus = ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)))->PIN);
		u32iPortStatus &= 0xfff8;  
		u32iPortStatus |= gucGainTable[index];
		((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)))->DOUT = (u32iPortStatus));
}

				 
     
   
				
   
	
			
void SYS_Init(void)
{
     
     
     
     
    ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->PWRCON |= (1ul << 2);

     
    CLK_WaitClockReady((1ul << 4));

     
    ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->CLKSEL0 = 0x07UL;

     
    ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->PLLCON |= (1ul << 16);

     
    ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->PWRCON |= (1ul << 0) | (1ul << 3);

     
    ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->PLLCON = (0x00000000UL | (((3)-2)<<9) | ((25)-2) | 0x4000UL);

     
    CLK_WaitClockReady((1ul << 2) | (1ul << 0) | (1ul << 3));

     
    ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->CLKSEL0 = 0x18UL | 0x02UL;

     
    ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->APBCLK = (1ul << 16) |
                  (1ul << 2) | (1ul << 3) | (1ul << 4) | (1ul << 5);

     
    ((CLK_T *) ((( uint32_t)0x50000000) + 0x00200))->CLKSEL1 = 0x01000000UL |
                   0x00000000UL | 0x00002000UL | 0x00070000UL | 0x00000000UL;
		CLK_EnableModuleClock(((0x0<<31)|(0x1<<29) |(0x3<<25) |( 2<<20) |(0x0<<18) |(0xFF<<10) |(16<<5) |28));
    CLK_SetModuleClock(((0x0<<31)|(0x1<<29) |(0x3<<25) |( 2<<20) |(0x0<<18) |(0xFF<<10) |(16<<5) |28), 0x0000000CUL, (((7)-1) << 16));
     
     
    SystemCoreClockUpdate();
    
     
     
     
  ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)))->OFFD |= 0x80);
     
     
    ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->P3_MFP &= ~(0x00000101UL | 0x00000202UL|0x00002020UL|0x00001010UL|0x00000808UL);
    ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->P3_MFP = 0x00000001UL | 0x00000002UL | 0x00000010UL | 0x00000020UL | 0x00000808UL;
		((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->P1_MFP &= ~(0x00008080UL);
    ((GCR_T *) ((( uint32_t)0x50000000) + 0x00000))->P1_MFP |= 0x00000080UL ;

}



void AdcSingleModeTest(void)
{
	float uint32PowerData=0;
	bat_AD_data=0;
	bat_data=0;
           
  
            ADC_Open(((ADC_T *) ((( uint32_t)0x40000000) + 0xE0000)), (0UL<<10), (0UL<<2), 0x1 << 7);

             
            (((ADC_T *) ((( uint32_t)0x40000000) + 0xE0000))->ADCR |= (1ul << 0));

             
            (((ADC_T *) ((( uint32_t)0x40000000) + 0xE0000))->ADSR = ((1ul << 0)));

             
            ADC_EnableInt(((ADC_T *) ((( uint32_t)0x40000000) + 0xE0000)), ((1ul << 0)));
            NVIC_EnableIRQ(ADC_IRQn);

             
            g_u32AdcIntFlag = 0;
            (((ADC_T *) ((( uint32_t)0x40000000) + 0xE0000))->ADCR |= (1ul << 11));

             
            while(g_u32AdcIntFlag == 0);

             
            ADC_DisableInt(((ADC_T *) ((( uint32_t)0x40000000) + 0xE0000)), ((1ul << 0)));

             
            bat_AD_data = ((((ADC_T *) ((( uint32_t)0x40000000) + 0xE0000))->ADDR[(7)] & (0xFFFFul << 0))>>0);
	
	uint32PowerData = ((float)(bat_AD_data-2600)/(3900-2600));
	if(uint32PowerData>=0.9)
	{uint32PowerData=0.9;}
	else if ((uint32PowerData>0.8)&&(uint32PowerData<0.9))
{uint32PowerData=0.7;}
	else if ((uint32PowerData>0.6)&&(uint32PowerData<0.8))
{uint32PowerData=0.5;}
	else if ((uint32PowerData>0.4)&&(uint32PowerData<0.6))
{uint32PowerData=0.3;}
	else if ((uint32PowerData>0.2)&&(uint32PowerData<0.4))
{uint32PowerData=0.1;}
	else if ((uint32PowerData>0.1)&&(uint32PowerData<0.2))
{uint32PowerData=0.05;}
	else{uint32PowerData=0.05;}
	uint32PowerData=uint32PowerData*100;
	bat_data = uint32PowerData;
						
						
						
	}
	void ADC_IRQHandler(void)
{
	g_u32AdcIntFlag = 1;
    (((ADC_T *) ((( uint32_t)0x40000000) + 0xE0000))->ADSR = ((1ul << 0)));  
}








 
void TMR0_IRQHandler(void)
{  
			
			char i;
    if(TIMER_GetIntFlag(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))) == 1)
    {
         
			
        TIMER_ClearIntFlag(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
				uiTimerCounter++;
			
			if(select_type =='A')((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0x80));
			
			
			if (timer0_check == 'T')
			{
					if (uiTimerCounter >= 1) 
					{
						g_au32TMRINTCount[1] = 200; 
					}
			}
			if ((select_type =='D')||(select_type =='A')||(select_type =='S')||(select_type =='C'))
			{
				if (select_type =='S')
				{
					
										
						((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (u32iOutputVoltage));
					
					
					if (uiTimerCounter > 10)
					{
						
						
						if (gucT0Index <= gucindex_range){
							gucT0Index++;
						if(Hz_data>0)
						{				
						if(select_freq_range==2||select_freq_range==3)
							{
								((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = (12000000UL)/(Hz_data*2);
							}
							else{
										((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = guiTimer0Period[gucT0Index];
										}
						}
						else{
						((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = guiTimer0Period[gucT0Index];
						}
						uiTimerCounter = 0;
					
						
																																}
					
					}
				}
		
				
				else if(select_type =='A')
					{

					if(gucOutputVoltagePeak==0x66)
					{
						
							
							((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (u32iOutputVoltage));
						delay_time(800);	
						((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0xff-u32iOutputVoltage));
						delay_time(1000);
						for(i=0;i<5;i++){uiAdc8320Value += read_ext_adc();}
						delay_time(1000);
						((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0x80));
						delay_time(300);
						uiAdc8320Value_offset += read_ext_adc();
						
						delay_time(300);
						
						((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (u32iOutputVoltage));
						delay_time(1000);
						for(i=0;i<5;i++){uiAdc8320Value += read_ext_adc();}
						delay_time(1000);
						((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0x80));
						delay_time(1600);
						((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0xff-u32iOutputVoltage));
						
						
						delay_time(800);
						((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0x80));
						
							
							
							
						}else{
							
							if(u32iOutputVoltage < 0x80) 
									{
										u32iOutputVoltage = 0xff-u32iOutputVoltage;
										((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (u32iOutputVoltage));
										uiAdc8320Value += read_ext_adc();
										}else if (u32iOutputVoltage>=0x80)
											{
											u32iOutputVoltage = 0xff-u32iOutputVoltage;
												((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (u32iOutputVoltage));
												uiAdc8320Value_offset += read_ext_adc();
												}
											
									}
					
									
			}
					else if(select_type =='D')
					{
					   ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0xff-u32iOutputVoltage));	
							
					}
					else if(select_type =='C')
					{
					   ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0xff-u32iOutputVoltage));
						
						
							
						
					}	
					
				if (select_type =='S')
				{
					if(u32iOutputVoltage < 0x80) 
					{
						u32iOutputVoltage = 0xff-u32iOutputVoltage;
					
						
					}else if (u32iOutputVoltage>=0x80)
					{
						u32iOutputVoltage = 0xff-u32iOutputVoltage;
						
					}
					
				}
			}
		}
 if(select_type =='A'){
		if(uiTimerCounter>=stri_counter){
														TIMER_Stop(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
														u32iOutputVoltage=0x80;
														((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (u32iOutputVoltage));
														
														uiAdc8320Value_f =(float)uiAdc8320Value/(uiTimerCounter*10);
														uiAdc8320Value_f_offset =(float)uiAdc8320Value_offset/(uiTimerCounter);
														uiAdc8320Value_ac = uiAdc8320Value_f-uiAdc8320Value_f_offset;
														uiAdc8320Value=0;
														uiAdc8320Value_offset=0;
															}		
											}

						
    														
}









 
void TMR1_IRQHandler(void)
{
    if(TIMER_GetCaptureIntFlag(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020))) == 1)
    {
				
         
        TIMER_ClearCaptureIntFlag(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)));

        g_au32TMRINTCount[1]++;
			if(u32InitCount>=200)u32InitCount=200;
			g_au32TMR1Count[u32InitCount++] = TIMER_GetCaptureData(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)));
			
			
			if (g_au32TMRINTCount[1]%2)
				TIMER_EnableCapture(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)),(0UL << 4) , (1UL << 1));
			else
				TIMER_EnableCapture(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)),(1UL << 4) , (1UL << 1));
			
    }

}


 
 
 
double myFloorRound(double dInput)
{
    if(dInput >= 0.000f)
    {
        return floor(dInput + 0.005f);
    }
    return ceil(dInput - 0.005f);
}
int main(void)
{



	int i,j;
	uint32_t TIMER_CLK;


		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )), 0x00000001, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )), 0x00000002, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )), 0x00000004, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )), 0x00000008, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )), 0x00000010, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )), 0x00000020, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )), 0x00000040, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )), 0x00000080, 0x1UL);
		
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000001, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000002, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000004, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000008, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000010, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000020, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000040, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)), 0x00000080, 0x1UL);
	
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)), 0x00000002, 0x0UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)), 0x00000008, 0x0UL);
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)), 0x00000010, 0x0UL);
		
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0080)), 0x00000002, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0080)), 0x00000004, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0080)), 0x00000008, 0x1UL);
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0080)), 0x00000010, 0x1UL);
    GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0080)), 0x00000020, 0x1UL);
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0080)), 0x00000040, 0x1UL);
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0080)), 0x00000080, 0x1UL);
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)), 0x00000010, 0x0UL);
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((6)<<2))))=1;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(2))) + ((5)<<2))))=0;
		(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(2))) + ((6)<<2))))=0;
    (*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(2))) + ((7)<<2))))=0;
		

		
	
		((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0040)))->DOUT = (0x000000));
		((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0x000080));	
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((3)<<2)))) = 1;

    min_freq=400;
		max_freq =6000;
	  
	   Initial_st7920();			
		Show_Graphic();
		delay_time(25000000);
		Clear_GDRAM();
		
		

     
	
    SYS_UnlockReg();
		
		

     
    SYS_Init();
		((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON |=  (1ul << 0) ;

		language_select = FMC_Read(language_addr);
		if(language_select>2)language_select=0;
    select_freq_range = FMC_Read(u32Addr);
		if(select_freq_range>6)select_freq_range=0;
		interrupt_right = FMC_Read(unit_addr);
		if(interrupt_right>3)interrupt_right=0;
    NVIC_EnableIRQ(GPIO_P2P3P4_IRQn);
		
		if(select_freq_range==2)
					{ 
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=400;
						max_freq =1200;
						strain_coeffic = 4.062;
					}
					else if(select_freq_range==3)
					{
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=9;
						min_freq=450;
						max_freq =1200;	
						strain_coeffic = 3.304;		
					}
					else if(select_freq_range==1)
					{ 

						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=26;
						min_freq=2000;
						max_freq =3500;						
					}
					else if(select_freq_range==4)
					{
						button_range_min=gucT0Index=11;
						button_range_max=gucindex_range=26;
						min_freq=2000;
						max_freq =6100;
						strain_coeffic = 0.39102;
					}
					else if(select_freq_range==5)
					{
						button_range_min=gucT0Index=21;
						button_range_max=gucindex_range=57;
						min_freq=2500;
						max_freq =6100;
					}
					else if(select_freq_range==0)
					{
						button_range_min=gucT0Index=0;
						button_range_max=gucindex_range=47;
						min_freq=450;
						max_freq =6100;
					}
	
					
					
    init_ext_ad();
		Page_1();
		
			
			
     
		gucT0Index = 0;
    ((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = guiTimer0Period[gucT0Index];
    ((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCSR = (1ul << 29) | (1UL << 27);
    ((((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)))->TCSR = ((((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)))->TCSR & ~(0xFFul << 0)) | (0));
		uiTimerCounter = 0;
     
		 
					
    NVIC_EnableIRQ(TMR0_IRQn);
			
			u32iOutputVoltage = 0x0000;
			
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)), 0x00000010, 0x0UL);
		GPIO_EnableInt(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)), 4, 0x00010000UL);
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)), 0x00000020, 0x0UL);
    GPIO_EnableInt(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)), 5, 0x00010000UL);
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)), 0x00000001, 0x0UL);
    GPIO_EnableInt(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)), 0, 0x00010000UL);
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)), 0x00000004, 0x0UL);
    GPIO_EnableInt(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x0100)), 2, 0x00010000UL);
		GPIO_SetMode(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)), 0x00000080, 0x0UL);
    GPIO_EnableInt(((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) + 0x00C0)), 7, 0x00010000UL);
			
			
			
			
		
		
  while(1)
	
	
	
	{	
	  delay_time(10000000);
		
		
		
		
		if((select_freq_range==3)||(select_freq_range==2))
		{
		max_freq_timer = (50000500)/min_freq;
	  min_freq_timer = (50000500)/max_freq;
		}
		else{
				max_freq_timer = (50000500)/(min_freq);
	  min_freq_timer = (50000500)/(max_freq);
		}
	  g_au32HzMaxMin[0] = max_freq_timer;
		g_au32HzMaxMin[1] = min_freq_timer;
		
		
	  
	
		uiAdc8320Value = 0;
		uiAdc8320Value_offset=0;
		
    if(select_command_success == 1)
		{	
			
			while_counter++;	
			uiTimerCounter = 0;
			u32iOutputVoltage = gucOutputVoltagePeak;	
			
			
				
		if (select_type =='S')
			{
		




 
				button_update++;
				if(while_counter>50){
					AdcSingleModeTest();
					while_counter=1;
				}
				delay_time(40000);
					if(Hz_data>0){
				if(select_freq_range==2||select_freq_range==3)
				{
					((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = guiTimer0Period[gucT0Index];
					TIMER_Start(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
				}
					
				else{
					((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = guiTimer0Period[gucT0Index];
					TIMER_Start(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
				}
			}
					else
					{
					((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = guiTimer0Period[gucT0Index];
					TIMER_Start(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
					}
						
			}
	else if(select_type =='A')
			{
				




















 
				((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = (12000000UL)/300;
			TIMER_Start(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
			}
	else if(select_type =='D')
			{
			gucT0Index = 0;
				((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = (12000000UL)/2000;
			TIMER_Start(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
				
			}
		else if(select_type =='C')
			{
			gucT0Index = 0;
				((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = (12000000UL)/4000;
				
			TIMER_Start(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
				
				
			}	
			
			 
			
			
				
					
			
			
			if (select_type =='S')
			{
				delay_time(40000);
				
				
	
					
		while (gucT0Index <= (gucindex_range)){
					if(gucT0Index==gucindex_range)
							{
								
								gucindex_range = button_range_max;
								gucT0Index = button_range_min;
								((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0x80));
								u32iOutputVoltage = 0X80;
								break;
							}	
							
							
						}
				
				
					TIMER_Stop(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
					
					for(i=0;i<200;i++)
					{
						g_au32TMR1Count[i] = 0;
					}
				
					
					timer0_check = 'T';
					((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000))->TCMPR = (12000000UL); 
					TIMER_Start(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
				
				
				TIMER_Open(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)), (3UL << 27),1);
				 
					((((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)))->TCSR = ((((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)))->TCSR & ~(0xFFul << 0)) | (0));
					((((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)))->TCMPR = (0xffffff));
					TIMER_EnableEventCounter(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)), (0UL << 0));
					TIMER_EnableCaptureDebounce(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)));
					TIMER_DisableEventCounter(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)));
				
					TIMER_EnableCapture(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)), (1UL << 4), (2UL << 1));
					TIMER_EnableCaptureInt(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)));
			
					
				 
					
				
					u32InitCount = g_au32TMRINTCount[1] = 0;
					
					TIMER_Start(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)));
				
				
					NVIC_EnableIRQ(TMR1_IRQn);
					
				 
				delay_time(500000);
			



 
				
				TIMER_Stop(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
				
					

				 
				TIMER_Stop(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)));
				TIMER_Close(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10020)));

				(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((5)<<2)))) = 1;
				(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((5)<<2)))) = 0;
				(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((5)<<2)))) = 1;

				
				uiAdc8320Value_Hz = 0;
				uiAdc8320Value_Hz_1 = 0;
				uiAdc8320Value_Hz_mean=0;
				uiAdc8320Value_Hz_mean_STD=0;
				j=0;
				
				for(i=5;i<200;i++)
							{
								if((g_au32TMR1Count[i] <= g_au32HzMaxMin[0])&&(g_au32TMR1Count[i] >= g_au32HzMaxMin[1]))
								{
								
						
								g_au32TMR1Count[i] = g_au32TMR1Count[i];
									
								}
								else{
									g_au32TMR1Count[i]=0;
								}
				      }
				
				for(i=10;i<200;i++)
				{
					if(g_au32TMR1Count[i]>0){
																												uiAdc8320Value_Hz_mean+=g_au32TMR1Count[i]; 
																												j++;	
					}
				}
				uiAdc8320Value_Hz_mean=uiAdc8320Value_Hz_mean/j;
				
				for(i=10;i<200;i++)
				{
					
				uiAdc8320Value_Hz_mean_STD+=((g_au32TMR1Count[i]-uiAdc8320Value_Hz_mean)*(g_au32TMR1Count[i]-uiAdc8320Value_Hz_mean)); 
					
				}
				uiAdc8320Value_Hz_mean_STD=sqrt(uiAdc8320Value_Hz_mean_STD/190)/2;
				
				for(i=10;i<200;i++)
				{
					if(g_au32TMR1Count[i]>=(uiAdc8320Value_Hz_mean+uiAdc8320Value_Hz_mean_STD)||(g_au32TMR1Count[i]<=(uiAdc8320Value_Hz_mean-uiAdc8320Value_Hz_mean_STD)))
						g_au32TMR1Count[i]=0;
					else
					{
							g_au32TMR1Count[i]=g_au32TMR1Count[i];
					}
				}
				
				
				j=0;
						for(i=10;i<200;i++)
							{
								if((g_au32TMR1Count[i] <= g_au32HzMaxMin[0])&&(g_au32TMR1Count[i] >= g_au32HzMaxMin[1]))
								{
								
						
								uiAdc8320Value_Hz_1 += g_au32TMR1Count[i];
									j++;
								}
				      }
							
				
						if (j>0)
						{
						
						uiAdc8320Value_Hz_1/= j;
						j=0;
						}
						

	













 
		uiAdc8320Value_Hz = uiAdc8320Value_Hz_1;
						
				

			
					
					init_ext_ad();
				
				
					
				
					SET_Gain(6);
					delay_time(50000);
					delay_time(50000);
					typeS_uiAdc8320Value = 0;
				  ((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (0x99));
				  delay_time(50000);
					for (i=0;i<50;i++)
					{
						typeS_uiAdc8320Value += read_ext_adc();
					}
					typeS_uiAdc8320Value /= 50;
					
					
					
					if(uiAdc8320Value_Hz>0&&(while_counter>0)){
				gain_uiAdc8320Value = (50000500)/uiAdc8320Value_Hz;
						







 
				time_ms = 1/gain_uiAdc8320Value*1000000;
				
				gain_uiAdc8320Value_stain_e=(gain_uiAdc8320Value);	
				stain_e =  gain_uiAdc8320Value_stain_e*gain_uiAdc8320Value_stain_e*0.001*strain_coeffic;
						
																	}
					
					gucGainTableIndex=1;
				typeS_uiAdc8320Value/=gfloatGainTable[gucGainTableIndex];
				typeSgain_uiAdc8320Value = (float)typeS_uiAdc8320Value/65535*5;
				if(gain_uiAdc8320Value>0)Hz_data=gain_uiAdc8320Value;
					else{Hz_data=0;}
					
				if(gain_uiAdc8320Value>9999)gain_uiAdc8320Value =9999;
					
					if(time_ms>9999)time_ms =9999;
				Hz_thou=gain_uiAdc8320Value/1000;	
				Hz_hun = (gain_uiAdc8320Value-(Hz_thou*1000))/100;
				Hz_tens = (gain_uiAdc8320Value-(Hz_thou*1000)-(Hz_hun*100))/10;
				Hz_ones = (gain_uiAdc8320Value-(Hz_thou*1000)-(Hz_hun*100)-(Hz_tens*10));
				Hz_pointone= ((gain_uiAdc8320Value-(Hz_thou*1000)-(Hz_hun*100)-(Hz_tens*10)-Hz_ones)/0.1);
				if(stain_e<10000){
				uE_thou = stain_e/1000;
				uE_hun = (stain_e-(uE_thou*1000))/100;
				uE_tens =	(stain_e-(uE_thou*1000)-(uE_hun*100))/10;
				uE_ones =	(stain_e-(uE_thou*1000)-(uE_hun*100)-(uE_tens*10));
				uE_pointone= ((stain_e-(uE_thou*1000)-(uE_hun*100)-(uE_tens*10)-uE_ones)/0.1);
						}
					else{
						uE_thou = stain_e/10000;
				uE_hun = (stain_e-(uE_thou*10000))/1000;
				uE_tens =	(stain_e-(uE_thou*10000)-(uE_hun*1000))/100;
				uE_ones =	(stain_e-(uE_thou*10000)-(uE_hun*1000)-(uE_tens*100));
				uE_pointone= ((stain_e-(uE_thou*10000)-(uE_hun*1000)-(uE_tens*100)-uE_ones)/1);
					
					}
				mS_thou = time_ms/1000;
				mS_hun = (time_ms-(mS_thou*1000))/100;
				mS_tens = (time_ms-(mS_thou*1000)-(mS_hun*100))/10;
				mS_ones =	(time_ms-(mS_thou*1000)-(mS_hun*100)-(mS_tens*10));
				mS_pointone= ((time_ms-(mS_thou*1000)-(mS_hun*100)-(mS_tens*10)-mS_ones)/0.1);
				if(select_command_success==1)display_select(interrupt_right);
				
				
				Temper = (120 -196.12 * typeSgain_uiAdc8320Value +214.51 * typeSgain_uiAdc8320Value*typeSgain_uiAdc8320Value -151.07 * typeSgain_uiAdc8320Value * typeSgain_uiAdc8320Value * typeSgain_uiAdc8320Value +55.748 * typeSgain_uiAdc8320Value *typeSgain_uiAdc8320Value *typeSgain_uiAdc8320Value *typeSgain_uiAdc8320Value -8.5429 * typeSgain_uiAdc8320Value *typeSgain_uiAdc8320Value*typeSgain_uiAdc8320Value*typeSgain_uiAdc8320Value*typeSgain_uiAdc8320Value);
				
				Temper_tens = Temper/10;
				Temper_ones = (Temper-(Temper_tens*10))/1;
				Temper_point = (Temper-(Temper_tens*10)-Temper_ones)/0.1;
				if(select_command_success==1)Temper_dis();
				if(select_command_success==1)bat_dis();
				
				
				
				typeSgain_uiAdc8320Value=0;
				gain_uiAdc8320Value=0;
			  
				WriteData(0xf8,0x90,0x00);
			delay_time(800);
				WriteData(0xfa,0xb0,0x90);
			delay_time(800);
				WriteData(0xfa,0xa0,0x00);
			delay_time(800);
			select_freq_range2 = FMC_Read(u32Addr);
			if(select_freq_range!=select_freq_range2)
			{
				((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON |= (1ul << 0);
			  FMC_Erase(u32Addr);
				FMC_Write(u32Addr, select_freq_range);
				((FMC_T *) ((( uint32_t)0x50000000) + 0x0C000))->ISPCON &= ~(1ul << 0);
			}
			
     
   
				
   
	
			
			
	
			
			}else if((select_type =='D')||(select_type =='A')||(select_type =='C'))
			{

			 
				
				if(select_type =='A')
					{
						if(gucOutputVoltagePeak==0x66)
							{
								AdcSingleModeTest();
								delay_time(8000000);
								init_ext_ad();
								gucGainTableIndex=0;
								if(while_counter>1)
									{
										uiAdc8320Value_ff=uiAdc8320Value_f;
										uiAdc8320Value_f =uiAdc8320Value_ac;
										stri_counter=100;
										}else{
													uiAdc8320Value_f=0xffff;
													stri_counter=100;
													}
								if(AC_counter>5)AC_counter=1;
								uiAdc8320Value_ac=0;
								}else{
											AdcSingleModeTest();
											for (i=0;i<500;i++)
											{
												uiAdc8320Value += read_ext_adc();
											}
											uiAdc8320Value =uiAdc8320Value/500;
											uiAdc8320Value_ff=uiAdc8320Value;
										}
					}
							
					
					
				
				else if(select_type =='D')
				{
					
					init_ext_ad();
				
					
					
					
					SET_Gain(0);
					
					delay_time(5000000);
					
					uiAdc8320Value = 0;
					for (i=0;i<5000;i++)
					{
						uiAdc8320Value += read_ext_adc();
					}
					uiAdc8320Value_f =uiAdc8320Value/5000.0;
					
					
					delay_time(5000000);
					}
				  else
						{
							init_ext_ad();
				
					
					
					
					SET_Gain(4);
					AdcSingleModeTest();
					delay_time(10000000);
					
					for (i=0;i<500;i++)
					{
						uiAdc8320Value += read_ext_adc();
					}
					uiAdc8320Value =uiAdc8320Value/500;
					
					uiAdc8320Value_f=uiAdc8320Value;

					
						

					}
						
			
											
					gain_uiAdc8320Value = uiAdc8320Value_f;
				  
					gain_uiAdc8320Value=gain_uiAdc8320Value*3;
					gain_uiAdc8320Value/=65535;
				  gain_uiAdc8320Value=gain_uiAdc8320Value*5.0;
					uiAdc8320Value_ff=uiAdc8320Value_ff*3;
					uiAdc8320Value_ff/=65535;
					uiAdc8320Value_ff=uiAdc8320Value_ff*5;
					
					
					if(select_command_success==1)electronic(select_type,gucOutputVoltagePeak);
					
					
					
					if(select_type=='D'){	
																				 if(gucOutputVoltagePeak==0x4E){gucOutputVoltage=5.1;gain_uiAdc8320Value=(gain_uiAdc8320Value);}
																		else if(gucOutputVoltagePeak==0x66){gucOutputVoltage=2.6;gain_uiAdc8320Value=(gain_uiAdc8320Value);}
																		else if(gucOutputVoltagePeak==0x09){gucOutputVoltage=12.1;gain_uiAdc8320Value=(gain_uiAdc8320Value);}
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															
															gain_uiAdc8320Value= ((0.000039012*gain_uiAdc8320Value*gain_uiAdc8320Value)+(1.007735744*gain_uiAdc8320Value)+0.001599033);
															
															
															dig_thou = gain_uiAdc8320Value/10;
															dig_hun  = (gain_uiAdc8320Value-(dig_thou*10))/1;
															dig_tens = (gain_uiAdc8320Value-(dig_thou*10)-(dig_hun*1))/0.1;
															dig_ones =	(gain_uiAdc8320Value-(dig_thou*10)-(dig_hun*1)-(dig_tens*0.1))/0.01;
															dig_zeros =	(gain_uiAdc8320Value-(dig_thou*10)-(dig_hun*1)-(dig_tens*0.1)-(dig_ones*0.01))/0.001;
															dig_pointzeros =	(gain_uiAdc8320Value-(dig_thou*10)-(dig_hun*1)-(dig_tens*0.1)-(dig_ones*0.01)-(dig_zeros*0.001))/0.0001;
															dig_pointones		=	(gain_uiAdc8320Value-(dig_thou*10)-(dig_hun*1)-(dig_tens*0.1)-(dig_ones*0.01)-(dig_zeros*0.001)-(dig_pointzeros*0.0001))/0.00001;
															if(select_command_success==1)display_dig();
															if(select_command_success==1)bat_dis();			}
					else if(select_type=='C'){	
																				  if(gucOutputVoltagePeak==0x09){
																					gucOutputVoltage=12.1;
																					
																					
																						if(gain_uiAdc8320Value<0)gain_uiAdc8320Value=0;
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					
																				
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					
																					}
																		
															
															dig3_hun = gain_uiAdc8320Value/10;
															if(gain_uiAdc8320Value>=10)	gain_uiAdc8320Value = gain_uiAdc8320Value-(dig3_hun*10);						
															dig3_ten = gain_uiAdc8320Value/1;
															dig3_one  = (gain_uiAdc8320Value-(dig3_ten))/0.1;
															dig3_pointone = (gain_uiAdc8320Value-(dig3_ten)-(dig3_one*0.1))/0.01;
															dig3_pointtwo =	(gain_uiAdc8320Value-(dig3_ten)-(dig3_one*0.1)-(dig3_pointone*0.01))/0.001;
															dig3_pointthree =	(gain_uiAdc8320Value-(dig3_ten)-(dig3_one*0.1)-(dig3_pointone*0.01)-(dig3_pointtwo*0.001))/0.0001;
															if(select_command_success==1)display_dig3();
															if(select_command_success==1)bat_dis();			}
					else if (select_type=='A'){
						
																		     if(gucOutputVoltagePeak==0x4E){gain_uiAdc8320Value=gain_uiAdc8320Value;}
																		else if(gucOutputVoltagePeak==0x66){gain_uiAdc8320Value=gain_uiAdc8320Value/2.5*10;}
																		else if(gucOutputVoltagePeak==0x09){gain_uiAdc8320Value=gain_uiAdc8320Value;}
																		if(gucOutputVoltagePeak==0x66){if(gain_uiAdc8320Value>=10){gain_uiAdc8320Value=9.99999;}}
																if(gucOutputVoltagePeak==0x66)
																		{
																		dig2_hunthou = gain_uiAdc8320Value/1;
																		dig2_tenthou = (gain_uiAdc8320Value-(dig2_hunthou*1))/0.1;
																		dig2_thou = (gain_uiAdc8320Value-(dig2_hunthou*1)-(dig2_tenthou*0.1))/0.01;
																		dig2_hun  = (gain_uiAdc8320Value-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01))/0.001;
																		dig2_tens = (gain_uiAdc8320Value-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01)-(dig2_hun*0.001))/0.0001;
																		dig2_ones =	(gain_uiAdc8320Value-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01)-(dig2_hun*0.001)-(dig2_tens*0.0001))/0.00001;
																		if(select_command_success==1)display_dig2();
																			if(select_command_success==1)bat_dis();}
																		
																else{
																	dig2_thouthou=uiAdc8320Value_ff/10;
																	dig2_hunthou = (uiAdc8320Value_ff-dig2_thouthou*10)/1;
																		dig2_tenthou = (uiAdc8320Value_ff-(dig2_thouthou*10)-(dig2_hunthou*1))/0.1;
																		dig2_thou = (uiAdc8320Value_ff-(dig2_thouthou*10)-(dig2_hunthou*1)-(dig2_tenthou*0.1))/0.01;
																		dig2_hun  = (uiAdc8320Value_ff-(dig2_thouthou*10)-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01))/0.001;
																		dig2_tens = (uiAdc8320Value_ff-(dig2_thouthou*10)-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01)-(dig2_hun*0.001))/0.0001;
																		dig2_ones =	(uiAdc8320Value_ff-(dig2_thouthou*10)-(dig2_hunthou*1)-(dig2_tenthou*0.1)-(dig2_thou*0.01)-(dig2_hun*0.001)-(dig2_tens*0.0001))/0.00001;
																		if(select_command_success==1)display_dig2();
																			if(select_command_success==1)bat_dis();}
																			}
					
																			

					gain_uiAdc8320Value=0;
					
			}
			
			
	}
	
	 
   
				RESET_Gain();
			
			
			(*((volatile uint32_t *)(((((( uint32_t)0x50000000) + 0x4000) + 0x0200)+(0x20*(1))) + ((3)<<2)))) =1;
			
			
			
			ADC_Close(((ADC_T *) ((( uint32_t)0x40000000) + 0xE0000)));
			TIMER_Stop(((TIMER_T *) ((( uint32_t)0x40000000) + 0x10000)));
			u32iOutputVoltage=0x80;
			((((GPIO_T *) (((( uint32_t)0x50000000) + 0x4000) )))->DOUT = (u32iOutputVoltage));
			uiAdc8320Value_f=0;
			uiAdc8320Value_f_offset=0;
		uiAdc8320Value=0;
		current_count=0;
		current_total=0;
	}
	
}

 
