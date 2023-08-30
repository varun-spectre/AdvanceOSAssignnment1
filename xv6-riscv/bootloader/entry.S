# _entry should be the first function invoked when
# the QEMU CPU starts executing. It's location should
# according to the memory layout provided in param.h

.section .text
.global _entry
.extern bl_stack
.extern start


_entry:
        # task: setup a per-CPU stack for C and jump to start() function
        # Get the core id
        csrr t0, mhartid # copying machine hardware thread ID to temp variable t0
	li t1, 4096
	mul t0, t0, t1
	add t0, t0, t1 # moving to the end
        la t2 , bl_stack  # loading the base address of the stack pointer
        add t2, t2, t0 # getting the end point of the stack
        mv sp, t2 # moving the stack pointer to the end point of the stack

        jal start

spin:
        j spin
