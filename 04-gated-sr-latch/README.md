# ⚡ Gated SR Latch (Enable-Controlled)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

This module implements a **Gated SR Latch**, providing fundamental memory storage controlled by an enable signal, accompanied by a complete testbench for verification.

## ⚙️ Architecture & Logic
* **Gate-Level Implementation:** Built using structural Verilog, utilizing `and` and `nor` gates to construct the storage logic.
* **Enable Gating:** The `en` (enable) input acts as a gatekeeper; when low, the latch ignores all `s` (set) and `r` (reset) input changes, ensuring memory stability.
* **Feedback Loop:** Employs cross-coupled NOR gates for stable output states (`q` and `qPrime`), ensuring reliable bit storage.

## 🛠️ Verification & Testbench
The accompanying testbench thoroughly tests the fundamental operations of the memory cell:
* **Set & Reset Operations:** Validates that the outputs correctly transition when the enable line is high and proper inputs are provided.
* **Hold State Verification:** Confirms that when the enable (`en`) signal goes low, the circuit securely holds its state despite input fluctuations.
* **Waveform Generation:** Outputs standard signal traces for verification through tools like GTKWave.