
#ifndef _BOARD_H
#define _BOARD_H

// [debug]
#define SYS_CLK_FREQ 250000000ul
#define LED2(_ON_) gpio_set(GPIO('A', 0), (_ON_) == 0)
#define LED1(_ON_) gpio_set(GPIO('G', 9), (_ON_) == 0)
#define DBG_PIN !PORTBbits.RB2 // key
#define COMM_UART UART3
#define DBG_UART UART3

void BOARD_init();

#endif
