# 📐 FSM-Based Square Root Hardware Accelerator

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This project implements a hardware **Square Root Calculator** using a Finite State Machine (FSM) and an iterative subtraction algorithm, complete with a comprehensive testbench and runtime console monitoring.

## ⚙️ Architecture & Logic
* **FSM-Based Control Unit:** Manages execution states (`idle`, `s0`, `s1`, `s2`) with asynchronous reset and synchronous clock edge transitions.
* **Iterative Arithmetic Algorithm:** Calculates the integer square root by successively subtracting consecutive odd numbers from the target value, demonstrating efficient hardware algorithm implementation without resource-heavy multipliers.
* **Datapath Registers:** Utilizes dedicated internal registers (`ram`, `odd`, `count`) to track intermediate subtraction states and cycle counts.

## 🛠️ Verification & Testbench
The testbench provides rigorous functional verification:
* **Test Vector Injection:** Initializes the module, applies a reset sequence, and feeds test numbers (e.g., `num = 36`) to evaluate convergence.
* **Runtime Console Logging:** Uses procedural `$display` tasks to log real-time internal register changes (`ram`, `odd`, `count`, `out`, `done`) directly to the simulation console.
* **Waveform Generation:** Dumps signal execution traces into a `time.vcd` file for timing analyzer inspection.