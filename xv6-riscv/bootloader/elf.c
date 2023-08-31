#include "types.h"
#include "param.h"
#include "layout.h"
#include "riscv.h"
#include "defs.h"
#include "buf.h"
#include "elf.h"

#include <stdbool.h>

struct elfhdr *kernel_elfhdr;
struct proghdr *kernel_phdr;

uint64 find_kernel_load_addr(enum kernel ktype)
{
    /* CSE 536: Get kernel load address from headers */
    kernel_elfhdr = (struct elfhdr *)RAMDISK;

    uint64 phoff = kernel_elfhdr->phoff;
    uint64 phsize = kernel_elfhdr->phentsize;

    uint64 text_phdr_addr = RAMDISK + phoff + phsize;

    kernel_phdr = (struct proghdr *)text_phdr_addr;

    return kernel_phdr->vaddr;
}

uint64 find_kernel_size(enum kernel ktype)
{
    /* CSE 536: Get kernel binary size from headers */
    return 0;
}

uint64 find_kernel_entry_addr(enum kernel ktype)
{
    /* CSE 536: Get kernel entry point from headers */
    return 0;
}