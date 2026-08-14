# 🔀 Behavioral Multiplexer (2-to-1 Mux)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This module implements a standard **2-to-1 Multiplexer** using high-level behavioral Verilog modeling, complete with a verification testbench.

## ⚙️ Architecture & Logic
* **Behavioral Abstraction:** Uses `always @(*)` blocks and conditional `if-else` statements to route data based on the selection line.
* **Data Selection:** Dynamically routes either input `i0` or `i1` to the output `out` depending on the state of the `sel` signal.

## 🛠️ Verification & Testbench
The testbench validates the core multiplexer functionality:
* **Switching Verification:** Tests output response when `select` toggles between low and high states.
* **Waveform Generation:** Dumps signal transitions into a `.vcd` file for waveform analysis.