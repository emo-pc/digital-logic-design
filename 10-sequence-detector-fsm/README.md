# ⚡ 1101 Sequence Detector — Finite State Machine (FSM)

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_Logic_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Simulation-Passed-brightgreen?style=for-the-badge)

A robust, clock-synchronized **Finite State Machine (FSM)** developed in **Verilog HDL** to continuously monitor an input stream and detect the specific sequence `1101`. 

This project demonstrates core hardware engineering principles, including synchronous state transitions, combinational next-state logic, and edge-case simulation through automated testbenches. Developed as part of the Computer Engineering curriculum at **Bogazici University**.

---

## 🧠 System Architecture

The project is structured into two main modules: the core hardware description and the verification testbench.

### 1. The Core Module (`fstm.v`)
The state machine is designed using strict **clock-synchronization** and split-block architecture to separate sequential memory from combinational logic:
- **Sequential Block (`always @(posedge clk)`):** Updates the active state strictly on the positive edge of the clock signal, ensuring glitch-free memory transitions.
- **Combinational Block (`always @(*)`):** Evaluates the current state and the incoming `in` signal to dynamically route to the next state without clock latency.
- **State Encoding:** Utilizes a 5-state tracking system (`s1` to `s5`) to monitor the progression of the sequence bit-by-bit. The `found` flag asserts high (`1`) only when the final state (`s5`) is reached.

### 2. The Verification Engine (`testFstM.v`)
A rigorous testbench designed to validate the FSM against overlapping sequences and edge cases.
- **Clock Generator:** Implements a continuous `forever` loop, toggling the clock every 5 nanoseconds (`#5 clk = ~clk`).
- **Edge-Case Injection:** Instead of a simple `1-1-0-1` test, the testbench injects the sequence `1-1-1-0-1`. This explicitly tests the system's resilience and proves that consecutive identical bits (the third `1`) do not break the tracking logic, correctly extracting the target sequence from the noise.
- **Waveform Serialization:** Dumps the state transitions and signal changes into a `.vcd` file for deep visual analysis.

---

## 🔄 State Transition Logic

The machine resets to `s1` (Idle) and transitions according to the following logic matrix:

| Current State | Input (`in`) | Next State | Progress |
| :--- | :---: | :--- | :--- |
| **`s1`** (Idle) | `1` | `s2` | `1...` detected |
| **`s2`** | `1` | `s3` | `11..` detected |
| **`s3`** | `0` | `s4` | `110.` detected |
| **`s4`** | `1` | **`s5`** | **`1101` detected!** |
| *Any State* | *Unexpected Bit* | *Fallback State*| *FSM gracefully degrades based on matching suffix* |

---

## 🛠️ Tools & Verification
* **HDL Language:** Verilog HDL
* **Simulation & Testing:** Self-checking testbenches with procedural `$display` tasks and automated waveform dumping (`.vcd` format)
* **Waveform Viewers:** Fully compatible with **GTKWave** and standard industry EDA simulation tools
