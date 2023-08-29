# _entry should be the first function invoked when
# the QEMU CPU starts executing. It's location should
# according to the memory layout provided in param.h

.section .text
.global _entry
_entry:
        # task: setup a per-CPU stack for C and jump to start() function
        # Loading the end point of the stack pointer
        la sp, bl_stack + (STSIZE * NCPU)

        jal start

spin:
        j spin
