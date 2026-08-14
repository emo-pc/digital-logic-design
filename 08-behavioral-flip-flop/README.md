# ⚡ Behavioral D Flip-Flop (Edge-Triggered)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This module implements a **Positive Edge-Triggered D Flip-Flop** using behavioral Verilog modeling, complete with a dedicated testbench for synchronous verification.

## ⚙️ Architecture & Logic
* **Edge-Triggered Synchronous Design:** Uses the `posedge clk` sensitivity list to ensure state changes occur strictly on the rising edge of the clock cycle[cite: 11].
* **Non-Blocking Assignments:** Utilizes non-blocking assignments (`<=`) inside the procedural block to model proper hardware sequential storage and prevent race conditions.

## 🛠️ Verification & Testbench
The testbench validates sequential timing behavior:
* **Clock Generation:** Continuously toggles the clock signal every 5 time units (`always #5 clk = ~clk`)[cite: 12].
* **Waveform Dumping:** Exports signal transitions to a `timingDia.vcd` file for logic analyzer inspection[cite: 12].