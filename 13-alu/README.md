# 🧮 4-Bit Arithmetic Logic Unit (ALU)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This project implements a 4-bit **Arithmetic Logic Unit (ALU)** capable of performing fundamental arithmetic and bitwise logical operations controlled by a selection line.

## ⚙️ Architecture & Logic
* **Combinational Datapath:** Uses continuous behavioral sensitivity blocks (`always @(*)`) to evaluate operations instantly based on inputs[cite: 21].
* **Supported Operations:** 
  * `2'b00`: Addition (`a + b`)[cite: 21]
  * `2'b01`: Subtraction (`a - b`)[cite: 21]
  * `2'b10`: Bitwise AND (`a & b`)[cite: 21]
  * `2'b11`: Bitwise OR (`a | b`)[cite: 21]

## 🛠️ Verification & Testbench
The testbench validates core arithmetic and logic transitions:
* **Vector Stimulation:** Cycles through custom decimal and binary values (`5+3`, `10-4`, bitwise operations) across time intervals[cite: 22].
* **Waveform Generation:** Dumps signal transitions into a `timingDiagram` file for timing verification[cite: 22].