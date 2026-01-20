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
<img width="736" height="759" alt="제목 없는 다이어그램 drawio" src="https://github.com/user-attachments/assets/d0e9bbd5-c3fd-4736-88eb-cae80ee433f1" />


# FPGA

Target FPGA: Xilinx Zynq UltraScale+ (XZCU)
Currently, FPGA testing has not been completed because the USB-to-JTAG converter has not arrived yet.
Once it arrives, the design will be tested on real hardware.
