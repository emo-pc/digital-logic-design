# 🔐 FSM-Based Digital Combination Lock (Security System)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This project implements a **Digital Security Lock System** governed by a Finite State Machine (FSM), featuring secure password matching, multi-attempt error tracking, and a lockout alarm mechanism.

## ⚙️ Architecture & Logic
* **FSM State Control:** Manages core operational states (`read`, `check`, `Alarm`) synchronized via clock edges and asynchronous reset[cite: 17].
* **Shift Register Data Packing:** Concatenates incoming 4-bit nibbles (`digit_in`) into a 16-bit shift register (`attempt`) upon each enter signal[cite: 17].
* **Security & Alarm Logic:** Tracks incorrect password entries (`error_cnt`); triggers a permanent system alarm (`Alarm` state) if the threshold exceeds three failed attempts[cite: 17].

## 🛠️ Verification & Testbench
The testbench provides rigorous behavioral validation:
* **Sequential Key Injection:** Drives custom digit inputs synchronously across clock cycles to simulate keypad entry[cite: 18].
* **Real-Time Console Monitoring:** Uses `$display` tasks to log key attempts, digit counts, unlock status, and alarm flags directly to the console[cite: 18].
* **Waveform Generation:** Dumps signal execution traces into a `time.vcd` file for timing and state transition verification[cite: 18].