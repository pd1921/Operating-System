/*
 * file: preemptive.h
 *
 * this is the include file for the cooperative multithreading
 * package.  It is to be compiled by SDCC and targets the EdSim51 as
 * the target architecture.
 *
 * CS 3423 Fall 2018
 */

#ifndef __PREEMPTIVE_H__
#define __PREEMPTIVE_H__
#define CNAME(s) _ ## s
#define LNAME_2(c) c ## $
#define LNAME(c) LNAME_2(c)
#define SemaphoreWaitBody(S, label){ \
    __asm \
       label:\
            MOV ACC, CNAME(S) \
            JZ label \
            JB ACC.7, label \
        dec CNAME(S) \
    __endasm; \
}

#define SemaphoreCreate(s, n){ \
    s = n; \
}
//create a counting semaphore s; that is iniilized to n

#define SemaphoreWait(s){ \
    SemaphoreWaitBody(s, LNAME(__COUNTER__)); \
}
//do (busy-) wait() on semaphore s

#define SemaphoreSignal(s){ \
    __asm \
        INC CNAME(s)\
    __endasm; \
}
// signal() semaphore s

#define MAXTHREADS 4  /* not including the scheduler */
/* the scheduler does not take up a thread of its own */

typedef char ThreadID;
typedef void (*FunctionPtr)(void);

ThreadID ThreadCreate(FunctionPtr);
void ThreadYield(void);
void ThreadExit(void);
void myTimer0Handler(void);

#endif 
