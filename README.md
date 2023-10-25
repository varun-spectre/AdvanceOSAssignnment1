**QEMU RISC-V Bootloader Mastery: Enhancing Security and Functionality**

**Project Summary:**

In this project, I delved deep into the boot process of an operating system using QEMU and crafted a custom bootloader for the xv6 OS kernel. The journey involved a meticulous breakdown of tasks:

**1. Inspecting QEMU Boot ROM:**
_Utilized GDB to dissect the execution of the supplied Boot ROM, unraveling its intricacies and processes._

**2. Writing a Bootloader Linker Script and Assembly Code:**
_Developed a precise linker script, ensuring the bootloader binary operates seamlessly without corrupting other system components. Also, set up an assembly entry point to enable the execution of C code._

**3. Setting up a Stack for C Code:**
_Established a functional stack to facilitate the execution of C functions, resolving the initial absence of stack setup._

**4. Loading User-Selected OSs:**
_Implemented a versatile functionality enabling the booting of different OS kernel binaries, enhancing user flexibility._

**5. Configuring RISC-V PMP Feature:**
_Configured RISC-V's Physical Memory Protection (PMP), isolating memory from less privileged software and ensuring smooth execution at S-mode._

**6. Enabling Secure Boot:**
_Implemented a custom secure boot process, bolstering system security by verifying the integrity of loaded kernel binaries._

**Tech Skills and Tools Utilized:**

- **QEMU Emulator**
- **GDB Debugger**
- **RISC-V Architecture**
- **Assembler Programming (Assembly)**
- **C Programming**
- **Linker Scripts**
- **Physical Memory Protection (PMP) Configuration**
- **Secure Boot Implementation**
