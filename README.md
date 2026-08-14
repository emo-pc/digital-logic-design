# ⚡ Digital Logic Design & FPGA Portfolio

![Verilog](https://img.shields.io/badge/Language-Verilog_HDL-0A71D0?style=for-the-badge&logo=verilog&logoColor=white)
![Domain](https://img.shields.io/badge/Domain-Digital_System_Design-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active_Portfolio-brightgreen?style=for-the-badge)

A comprehensive collection of digital logic design projects implemented in **Verilog HDL**, ranging from fundamental gate-level circuits and memory elements to complex arithmetic units and Finite State Machines (FSMs).

---

## 📂 Repository Structure & Modules

| Folder / Project | Description | Modeling Type |
| :--- | :--- | :--- |
| **`01-gate-level-mux`** | 2-to-1 Multiplexer built with primitive logic gates | Gate-Level (Structural) |
| **`02-behavioral-mux`** | 2-to-1 Multiplexer with conditional routing | Behavioral |
| **`03-mux`** | 4-to-1 Multiplexer multi-input data selector | Behavioral |
| **`04-alu`** | 4-bit Arithmetic Logic Unit (Add, Sub, AND, OR) | Combinational |
| **`05-gate-level-sr-latch`** | Enable-controlled Set-Reset memory latch | Gate-Level (Structural) |
| **`06-gate-level-d-latch`** | Transparent D Latch using primitive gates | Gate-Level (Structural) |
| **`07-behavioral-d-latch`** | Transparent D Latch with advanced testbench monitoring | Behavioral |
| **`08-gate-level-flip-flop`** | Master-Slave edge-triggered D Flip-Flop | Gate-Level (Structural) |
| **`09-behavioral-flip-flop`** | Positive edge-triggered synchronous D Flip-Flop | Behavioral |
| **`10-sequence-detector-fsm`** | 1101 Bit Sequence Detector FSM | Behavioral / FSM |
| **`11-digital-lock-fsm`** | Combination security locker with multi-attempt alarm | FSM / Control Unit |
| **`12-multi-sequence-detector`** | Multi-state complex serial pattern detector | FSM |
| **`13-hlsm`** | FSM-based iterative square root calculator accelerator | FSM / Datapath |
| **`14-locker-hlsm`** | Advanced secure hardware lock system | FSM / Datapath |

---

## 🛠️ Tools & Verification
* **HDL Language:** Verilog HDL
* **Simulation & Testing:** Self-checking testbenches with procedural `$display` tasks and automated waveform dumping (`.vcd` format)
* **Waveform Viewers:** Fully compatible with **GTKWave** and standard industry EDA simulation tools
---

## 🛠️ How to Simulate Locally

To compile and simulate the waveform logic on your machine, you need a Verilog compiler like **Icarus Verilog** and a waveform viewer like **GTKWave**.

**1. Compile the Source Code:**
```bash
iverilog -o sequence_sim testFstM.v fstm.v
```

**2. Execute the Simulation:**
```bash
vvp sequence_sim
```

**3. View the Waveforms:**
```bash
# This will open the generated VCD file to visualize the clock cycles and state flags.
gtkwave finitesSM.vcd
```

---

## 👤 Author

**Emre Ezgü**  
<a href="https://github.com/emo-pc">
  <img src="https://github.com/user-attachments/assets/7530def7-4d03-4244-974d-7545c44f81f1"" width="150" align="right" alt="Emre Ezgü Ghibli Portrait">
</a>
- **University:** Bogazici University — Computer Engineering
- **GitHub:** [@emo-pc](https://github.com/emo-pc)
