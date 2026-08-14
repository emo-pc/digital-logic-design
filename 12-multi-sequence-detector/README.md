# 🔍 Complex Bit Sequence Detector FSM

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This project implements a multi-state **Finite State Machine (FSM)** designed to detect specific serial bit patterns (such as custom repeating binary sequences) from continuous data streams.

## ⚙️ Architecture & Logic
* **Multi-State Transition Logic:** Implements a robust state transition network with numerous explicit states (`s_off` through `s_110`) managed via combinatorial always blocks[cite: 19].
* **Synchronous State Memory:** Uses edge-triggered sequential logic (`posedge clk`) with asynchronous reset controls to safely transition states[cite: 19].
* **Real-Time Pattern Matching:** Evaluates incoming serial bits (`x`) cycle-by-cycle, asserting the output flag (`y`) immediately upon pattern recognition[cite: 19].

## 🛠️ Verification & Testbench
The testbench provides automated stimulus injection:
* **Vector Iteration:** Loops through a 16-bit predefined test vector (`testCase = 16'b1100111101010000`) and shifts bits sequentially on clock edges[cite: 20].
* **Console Monitoring:** Utilizes `$display` tasks to log real-time input bits and detection outputs (`y`) directly to the console[cite: 20].
* **Waveform Export:** Dumps simulation traces into a `time.vcd` file for timing and state verification[cite: 20].