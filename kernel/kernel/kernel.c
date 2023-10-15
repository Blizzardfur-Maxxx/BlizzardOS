#include <stdio.h>

#include <kernel/tty.h>

int i = 1;

void kernel_main(void) {
	terminal_initialize();
	printf("Hello, Welcome to BlizzardOS!\n");
	//terminal_setcolor(VGA_COLOR_BLUE);
	for (int i = 0; i < 100; i++) {
    	printf("big balls:3\n");
	}		
}