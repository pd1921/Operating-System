/* 
 * file: testpreempt.c 
 */
#include <8051.h>
#include "preemptive.h"

/* 
 * @@@ [2pt] 
 * declare your global variables here, for the shared buffer 
 * between the producer and consumer.  
 * Hint: you may want to manually designate the location for the 
 * variable.  you can use
 *        __data __at (0x30) type var; 
 * to declare a variable var of the type
 */
__data __at (0x21) char dataAvil;   
__data __at (0x22) char sharedVar;
__data __at (0x2B) char buffer[3];
__data __at (0x2E) char bufferCount;
__data __at (0x2F) char SBUFCount;

__data __at (0x36) char mutex;
__data __at (0x37) char full;
__data __at (0x38) char empty;

/* [8 pts] for this function
 * the producer in this test program generates one characters at a
 * time from 'A' to 'Z' and starts from 'A' again. The shared buffer
 * must be empty in order for the Producer to write.
 */
void Producer(void) {
    while (1) {
        /* @@@ [6 pt]
         * wait for the buffer to be available, 
         * and then write the new data into the buffer */
        SemaphoreWait(empty);
        SemaphoreWait(mutex);
            if( bufferCount >= 3 )
                bufferCount = 0;
            buffer[bufferCount] = sharedVar;
            
            bufferCount++;
            sharedVar++;
            if( sharedVar > 'Z' || sharedVar < 'A' )
                sharedVar = 'A';
        SemaphoreSignal(mutex);
        SemaphoreSignal(full);
    }
}

/* [10 pts for this function]
 * the consumer in this test program gets the next item from
 * the queue and consume it and writes it to the serial port.
 * The Consumer also does not return.
 */
void Consumer(void) {
    /* @@@ [2 pt] initialize Tx for polling */
    TMOD |= (0x20);
    TH1 = -6;
    SCON = (0x50);
    TR1 = 1;

    while (1) {
        /* @@@ [2 pt] wait for new data from producer */
        SemaphoreWait(full);
        SemaphoreWait(mutex);
            if( SBUFCount >= 3 )
                SBUFCount = 0;
            SBUF = buffer[SBUFCount];

            SBUFCount++;
            while(!TI){}
            TI = 0;
        SemaphoreSignal(mutex);
        SemaphoreSignal(empty);
    }
}

/* [5 pts for this function]
 * main() is started by the thread bootstrapper as thread-0.
 * It can= create more thread(s) as needed:
 * one thread can acts as producer and another as consumer.
 */
void main(void) {
    /* @@@ [1 pt] initialize globals */
    dataAvil = 1;
    sharedVar = 'A';
    bufferCount = 0;
    SBUFCount = 0;

    SemaphoreCreate(mutex, 1);
    SemaphoreCreate(full, 0);
    SemaphoreCreate(empty, 3);

    /* @@@ [4 pt] set up Producer and Consumer.
     * Because both are infinite loops, there is no loop
     * in this function and no return.
     */
    ThreadCreate(Producer);
    Consumer();
}

void _sdcc_gsinit_startup(void) {
    __asm
        ljmp  _Bootstrap
        __endasm;
}

void _mcs51_genRAMCLEAR(void) {}
void _mcs51_genXINIT(void) {}
void _mcs51_genXRAMCLEAR(void) {}

void timer0_ISR(void) __interrupt(1){
    __asm
        ljmp _myTimer0Handler
    __endasm;
}
