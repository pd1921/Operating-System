/* file: testparking.c */
#include <8051.h>
#include "preemptive.h"
#define CARS 5
#define SPOT 2

#define printCarParking(carNum, j){ \
    SBUF = carNum; \
    while(!TI){} \
    TI = 0; \
    SBUF = 'i'; \
    while(!TI){} \
    TI = 0; \
    SBUF = 'n'; \
    while(!TI){} \
    TI = 0; \
    SBUF = j; \
    while(!TI){} \
    TI = 0; \
}

#define printCarLeaving(carNum, time){\
    SBUF = carNum; \
    while(!TI){} \
    TI = 0; \
    SBUF = 'a'; \
    while(!TI){} \
    TI = 0; \
    SBUF = 't'; \
    while(!TI){} \
    TI = 0; \
    SBUF = time; \
    while(!TI){} \
    TI = 0; \
}

#define printSlash(){\
    SBUF = '/'; \
    while(!TI){} \
    TI = 0; \
}

__data __at (0x20) char carNum;
__data __at (0x21) char parkingSpot[SPOT];
__data __at (0x2B) char j;       // using as counter
__data __at (0x2C) ThreadID car; // a tmp saving carID
__data __at (0x2D) char random;
__data __at (0x2E) char space;
__data __at (0x2F) char carCount;

__data __at (0x36) char mutex;
__data __at (0x37) char full;
__data __at (0x38) char empty;

void CarParking(){
    TMOD |= (0x20);
    TH1 = -6;
    SCON = (0x50);
    TR1 = 1;
    random = 255-TL1;

    /*SemaphoreWait(empty);
      SemaphoreWait(mutex);
      for( j=0; j<SPOT; j++ ){
      space = parkingSpot[j];
      if( space == 0 ){
      parkingSpot[j] = carNum;
      carNum++;
      break;
      }
      } 
      printCarParking(carNum, j+48);
      printSlash();
      SemaphoreSignal(mutex);
      SemaphoreSignal(full);*/

    delay(random);

    SemaphoreWait(full);
    SemaphoreWait(mutex);
    printCarLeaving(parkingSpot[j], random+48);
    parkingSpot[j] = 0;
    printSlash();
    SemaphoreSignal(mutex);
    SemaphoreSignal(empty);

    ThreadExit();    
}

void makeCars(void){
    TMOD |= (0x20);
    TH1 = -6;
    SCON = (0x50);
    TR1 = 1;
    random = 255-TL1;
    
    do{
        car = ThreadCreate(CarParking);
        if( car == -1 ) 
            continue;
        
        /* parking the car after create the car */
        SemaphoreWait(empty);
        SemaphoreWait(mutex);
        for( j=0; j<SPOT; j++ ){
            space = parkingSpot[j];
            if( space == 0 ){
                parkingSpot[j] = carNum;
                break;
            }
        } 
        printCarParking(carNum, j+48);
        printSlash();
        SemaphoreSignal(mutex);
        SemaphoreSignal(full);

        carCount++;
        carNum++;
        
    }while(carCount<CARS);

    ThreadExit();
}

void main(void){
    /* initialize */
    carNum = 'A';
    carCount = 0;
    for( j=0; j<SPOT; j++ )
        parkingSpot[j] = 0;
    /* The number of car starts from A */

    SemaphoreCreate(mutex, 1);
    SemaphoreCreate(full, 0);
    SemaphoreCreate(empty, SPOT);

    /* Create threads */
    makeCars();
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
