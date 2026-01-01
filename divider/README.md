# Clock Dividers (Verilog)

This folder contains **clock divider designs implemented in Verilog HDL** as part of a beginner-to-intermediate VLSI learning project.  
Each divider is fully verified using a testbench, waveform simulation, and synthesized using Yosys.

The goal of this section is to understand:
- Even and odd clock division
- Duty cycle behavior
- Parameterized (Mod-N) clock dividers
- RTL-to-schematic synthesis flow

---

## 📁 Folder Structure

divider/
├── div_by_2.v
├── div_by_2_tb.v
├── div_by_2_yosys.png
│
├── div_by_5.v
├── div_by_5_tb.v
├── div_by_5_yosys.png
│
├── clk_div_modN.v
├── clk_div_modN_tb.v
├── clk_div_modN_yosys.png
│
├── waveforms/
│ ├── div_by_2_gtkwave.png
│ ├── div_by_5_gtkwave.png
│ └── clk_div_modN_gtkwave.png
│
└── README.md


---

##  Divider Implementations

###  Divide-by-2 Clock Divider
**File:** `div_by_2.v`

- Simple even divider
- Uses a single flip-flop
- Output frequency = input clock / 2
- 50% duty cycle

This divider demonstrates the most basic clock division technique.

---

###  Divide-by-5 Clock Divider (Odd Divider)
**File:** `div_by_5.v`

- Odd clock divider
- Implemented using **both positive and negative clock edges**
- Uses two counters (posedge and negedge)
- Duty cycle is not exactly 50% (expected for odd division)

This design demonstrates how odd clock dividers are implemented in real hardware designs.

---

###  Parameterized Mod-N Clock Divider
**File:** `clk_div_modN.v`

- Generalized clock divider using a parameter `N`
- Supports both even and odd division
- Counter width calculated using `$clog2(N)`
- Uses dual-edge logic for correct odd division behavior

This module allows clock division by **any value of N** without rewriting the RTL.

Example : clk_div_modN #(.N(7)) u_div7 (...);




🧪Verification
Each divider includes a dedicated testbench:

Generates input clock

Applies reset

Dumps waveform (.vcd) for GTKWave analysis

Waveforms are viewed and verified using GTKWave, and screenshots are stored in the waveforms/ folder.

🛠 Tools Used

Icarus Verilog – Compilation & simulation

GTKWave – Waveform viewing and verification

Yosys – RTL synthesis and schematic generation

Graphviz – Conversion of synthesis output to PNG diagrams

📊 Synthesis

Each design is synthesized using Yosys, and the resulting schematics are saved as PNG files (e.g. *_yosys.png).
These schematics help visualize:

Registers

Counters

Comparators

Output gating logic

📌 Notes

Odd clock dividers do not have a perfect 50% duty cycle.

Using both clock edges is a common industry technique for odd division.

The Mod-N divider demonstrates scalable RTL design practices.

🚀 Learning Outcome

Through these designs, the following concepts are covered:

Clock division techniques

Even vs odd divider behavior

Parameterized RTL design

Testbench-based verification

RTL → synthesis → schematic flow  ...
