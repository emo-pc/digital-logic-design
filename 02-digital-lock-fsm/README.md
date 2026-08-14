# 🔒 Digital Combination Lock (101 Sequence Detector)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)

This module implements a **Finite State Machine (FSM)** acting as a digital combination lock. It continuously monitors an input bitstream and asserts an `unlock` signal strictly when the sequence `101` is detected.

## ⚙️ Architecture & Logic
* **State Management:** Employs a 4-state architecture (`s_off`, `s_1`, `s_2`, `s_3`) to track input progression.
* **Conditional Routing:** Utilizes robust `if-else` branching within the combinational block to handle sequence interruptions and reset conditions gracefully.
* **Hardware implementation:** The `unlock` mechanism is designed as a direct output of the state evaluation, ensuring immediate response upon sequence completion.
