# 🧱 Gate-Level D Latch

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This module implements a fundamental **D Latch (Data Latch)** using purely structural, gate-level modeling in Verilog, accompanied by a comprehensive testbench for waveform verification.

## ⚙️ Architecture & Logic
* **Structural Design:** Constructed entirely from basic logic gates (`not`, `and`, `nor`) without using high-level behavioral abstractions.
* **Cross-Coupled Memory:** Utilizes two cross-coupled NOR gates to form the core memory cell, storing the state effectively.
* **Enable Control:** The `clk` signal acts as an enable line. When active, the output `q` transparently follows the data input `d`. When inactive, the latch securely holds its previous state.

## 🛠️ Verification & Testbench
The project includes a robust simulation testbench designed to validate the structural memory mechanics:
* **Transparency Test:** Verifies that `q` correctly tracks and outputs `d` while the enable signal (`clk`) is high.
* **Memory/Hold Test:** Validates that the memory cell retains its last state when `clk` transitions to low, completely ignoring any subsequent changes in the `d` input.
* **Waveform Extraction:** Generates standard `.vcd` files for visual analysis of logic transitions and gate-level behavior using tools like GTKWave.
