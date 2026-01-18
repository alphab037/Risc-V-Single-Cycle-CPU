# RISC-V Single-Cycle CPU

This project implements a RISC-V single-cycle CPU written in Verilog.
All supported instructions have been tested through simulation.
If you find any bugs or design issues, feedback and suggestions are always welcome.

# Reference / Inspiration

This design is inspired by Prof. Suh’s Computer Systems Design book.
Website: http://esca.korea.ac.kr/

The overall architecture is similar to the single-cycle CPU presented in the book,
but I modified and extended the design to:
support specific instruction types,
simplify control logic where possible,

and better understand the internal datapath and control signals.

# Microarchitecture
<img width="748" height="770" alt="image" src="https://github.com/user-attachments/assets/4f718057-26a6-4f4b-a756-ca17b8fa0375" />


# FPGA

Target FPGA: Xilinx Zynq UltraScale+ (XZCU)
Currently, FPGA testing has not been completed because the USB-to-JTAG converter has not arrived yet.
Once it arrives, the design will be tested on real hardware.
