# ECE 128 Lab 6 — Finite State Machines

This project explores finite state machines using Verilog in Vivado. It includes a switch debouncer, a Moore 1100 sequence detector, and a Mealy overlapping 1101 sequence detector.

**Course:** ECE 128 — FPGA Laboratory  
**Semester:** Fall 2026  
**Team:** Mahir Ashab Enan and Navjot Bains  
**Instructor:** Jannatun Naher, PhD

## Designs

| Design | Description |
|---|---|
| Switch Debouncer | Uses a counter to filter short input pulses |
| Moore 1100 FSM | Detects the sequence 1100 using a Moore machine |
| Mealy 1101 FSM | Detects overlapping 1101 sequences using a Mealy machine |

## Repository Files

**Design Files:** `debouncing.v`, `debouncer_top.v`, `moore_1100.v`, `mealy_1101.v`

**Testbenches:** `debouncing_tb.v`, `moore_1100_tb.v`, `mealy_1101_tb.v`

**Constraints:** `Lab6_Constraints.xdc`

## Tools

- Verilog HDL
- Xilinx Vivado 2026.1
- Vivado Simulator (XSim)

## Running the Simulations

1. Create an RTL project in Vivado.
2. Add the design files as **Design Sources**.
3. Add the testbenches as **Simulation Sources**.
4. Set the desired testbench as **Top**.
5. Select **Run Simulation → Run Behavioral Simulation**.
6. Select **Run All** and inspect the waveforms.

| Testbench | Expected Result |
|---|---|
| `debouncing_tb` | Short pulses are ignored and longer pulses are accepted |
| `moore_1100_tb` | Output becomes 1 when 1100 is detected |
| `mealy_1101_tb` | Output becomes 1 when 1101 is detected, including overlapping sequences |

## FPGA Implementation

1. Set `debouncer_top` as the Design Top.
2. Add `Lab6_Constraints.xdc` to the project.
3. Verify that the FPGA part and pin assignments match the board.
4. Run **Synthesis**, **Implementation**, and **Generate Bitstream**.
5. Connect the board and use **Hardware Manager** to program and test the debouncer.

The constraints assign W5 to the clock, U18 to the pushbutton, and U16 to the LED.

## Implementation Results

The debouncer completed synthesis, implementation, and bitstream generation successfully.

| Resource | Used |
|---|---:|
| LUT | 4 |
| Flip-Flops | 4 |
| I/O | 3 |
| BUFG | 1 |

**Timing:** WNS = 8.328 ns, TNS = 0.000 ns.

All timing constraints were met for the selected FPGA part.

## Demonstration and Lab Report

All three behavioral simulations were completed and the waveforms were recorded. Physical FPGA testing and the TA demonstration are still pending.

The lab report includes prelab state diagrams, simulation results, implementation results, conclusion, contribution chart, and GitHub link.
