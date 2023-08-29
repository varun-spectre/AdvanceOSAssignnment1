# _entry should be the first function invoked when
# the QEMU CPU starts executing. It's location should
# according to the memory layout provided in param.h

.include "param.h"
.section .text
.global _entry
.extern bl_stack
.extern start


_entry:
        # task: setup a per-CPU stack for C and jump to start() function
        # Get the core id
        csrr t0, mhartid # copying machine hardware thread ID to temp variable t0
        la t1 , bl_stack(t0)  # loading the base address of the stack pointer
        add t1, t1, STSIZE # getting the end point of the stack
        mv sp, t1 # moving the stack pointer to the end point of the stack

        jal start

spin:
        j spin
