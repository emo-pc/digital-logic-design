# 🏛️ Gate-Level D Flip-Flop (Master-Slave Architecture)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This module implements a **Master-Slave D Flip-Flop** built entirely from structural gate-level logic, providing edge-triggered sequential storage without high-level behavioral abstractions.

## ⚙️ Architecture & Logic
* **Gate-Level Implementation:** Explicitly constructed using primitive `not`, `and`, and `nor` logic gates[cite: 13].
* **Master-Slave Configuration:** Utilizes two cascaded storage stages controlled by complementary clock phases (`clk` and `clkNot`) to ensure stable edge-triggered behavior and prevent transparency issues.
* **Why Gate-Level Sequential?** Demonstrates deep structural understanding of how sequential elements and feedback loops are physically mapped onto silicon gates.

## 🛠️ Verification & Testbench
The testbench validates the structural timing response:
* **Clock & Data Sweeping:** Manually drives clock and data transitions to verify master-slave latch interactions[cite: 14].
* **Waveform Export:** Dumps signal execution into a `timingDiagram.vcd` file for logic analyzer review[cite: 14].