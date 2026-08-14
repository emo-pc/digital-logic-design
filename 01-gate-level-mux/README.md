# ⛓️ Gate-Level Multiplexer (2-to-1 Mux)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This module implements a **2-to-1 Multiplexer** using structural, gate-level Verilog modeling, complete with a dedicated simulation testbench for functional verification.

## ⚙️ Architecture & Logic
* **Gate-Level Design:** Constructed explicitly using `not`, `and`, and `or` logic gates to implement the selection logic.
* **Selection Mechanism:** Inverts the `sel` signal to gate the `i0` input and uses the raw `sel` signal to gate the `i1` input, combining them to select the final output.
* **Why Gate-Level?** Demonstrates a deep understanding of underlying hardware logic and how higher-level mux operations are physically implemented on silicon.

## 🛠️ Verification & Testbench
The testbench validates the gate-level switching behavior:
* **State Transition Testing:** Toggles the `select` line while holding input states to ensure correct signal routing.
* **Waveform Generation:** Dumps real-time signal transitions into a `muxGtime.vcd` file for logic analyzer inspection in GTKWave.
