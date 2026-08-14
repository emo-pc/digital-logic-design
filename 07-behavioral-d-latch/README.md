# ⏱️ Behavioral D Latch (Transparent Latch)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This module implements a **Transparent D Latch** using high-level behavioral Verilog modeling, complete with a comprehensive testbench featuring clock generation and runtime display monitoring.

## ⚙️ Architecture & Logic
* **Behavioral Abstraction:** Utilizes `always @(d or clk)` sensitivity lists and conditional statements to define latch transparency.
* **Transparent Behavior:** When the clock enable (`clk`) is high, the output `q` transparently tracks the data input `d`, and `qPrime` holds its complementary value[cite: 11]. When `clk` is low, the latch holds its previous state.

## 🛠️ Verification & Testbench
The testbench provides rigorous timing and signal verification:
* **Clock Generation:** Generates a continuous toggling clock signal using `always #5 clk = ~clk`[cite: 12].
* **Runtime Monitoring:** Uses `$display` system tasks to log exact time stamps, input data states, and output responses directly to the console[cite: 12].
* **Waveform Dumping:** Exports signal transitions into a `timingDia.vcd` file for graphical inspection in GTKWave[cite: 12].