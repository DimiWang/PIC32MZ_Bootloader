#include <xc.h>


// dummy goto instead of bootloader
__attribute__((section(".start_BFC00000"))) void start_app (void)
{    
   asm("j 0x9D000000");
}


int main ( void )
{   
        
    // initialization

   while(1) {
       
       // run application
   }
   

   //dummy
   start_app ();         

   
   return 1;
}