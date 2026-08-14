# 🔀 4-to-1 Multiplexer (Behavioral Modeling)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This project implements a standard **4-to-1 Multiplexer** using behavioral Verilog modeling, designed to route one of four data inputs to a single output based on a 2-bit selection line.

## ⚙️ Architecture & Logic
* **Behavioral Selection Logic:** Uses continuous sensitivity blocks (`always @(*)`) with conditional `if-else` routing.
* **Data Routing:** Maps 4-bit input vectors (`i[3:0]`) to the scalar output (`out`) depending on the binary state of the 2-bit select lines (`s[1:0]`).

## 🛠️ Verification & Testbench
The testbench validates multi-channel data selection:
* **Vector Stimulation:** Shifts input bit patterns and cycles through all select combinations (`2'b00` to `2'b11`).
* **Waveform Generation:** Exports execution traces into a `prelab2Time.vcd` file for timing analysis.