# FPGA Stopwatch

A digital stopwatch designed and implemented on an FPGA using Verilog HDL.

This project was developed as part of an Electrical and Electronic Engineering Laboratory course. It implements a stopwatch with start, stop, reset, and lap-time recording functions using a finite state machine (FSM), digital counters, and 7-segment displays.

## Features

- **Start / Stop:** Start and pause the stopwatch using push buttons.
- **Reset:** Reset the stopwatch to its initial state.
- **Lap Time:** Capture and display a recorded time while the timer continues running.
- **Time Display:** Display minutes, seconds, and hundredths of a second using six 7-segment digits.
- **LED Indicators:** Provide visual feedback for stopwatch operation and lap mode.

## System Architecture

The design consists of eight Verilog modules, with `stopwatch_top` serving as the top-level module.

| Module | Description |
|---|---|
| `stopwatch_top` | Integrates all modules and connects the FPGA inputs and outputs. |
| `clk_div` | Divides the 1 MHz input clock to generate a 100 Hz timer clock. |
| `switch_interface` | Detects button input transitions and generates control pulses. |
| `state_machine` | Controls stopwatch operation using an FSM with RESET, RUN, STOP, and LAP states. |
| `timer` | Implements BCD counters for minutes, seconds, and hundredths of a second. |
| `lap_store` | Stores the recorded lap time in registers. |
| `seg_driver` | Converts time values into 7-segment display signals. |
| `led_driver` | Controls LED patterns according to the stopwatch operating mode. |

## Design Details

### Finite State Machine

The stopwatch operates using four states:

- **RESET:** Clears the timer and initializes the system.
- **RUN:** Enables the timer counter.
- **STOP:** Pauses the timer while preserving the current time.
- **LAP:** Continues counting while displaying the stored lap time.

### Timer and Clock Division

A clock divider converts the 1 MHz input clock into a 100 Hz clock, providing a time resolution of 0.01 seconds.

The timer uses cascaded BCD counters to represent time in the following format:

`MM:SS:CC`

where MM represents minutes, SS represents seconds, and CC represents hundredths of a second.

### Lap Time Recording

The `lap_store` module captures the current timer values when a lap event is triggered. The `seg_driver` module selects between the current time and the stored lap time depending on the operating state.

## Technologies

- **Language:** Verilog HDL
- **Hardware:** FPGA
- **Design Concepts:** Finite State Machine (FSM), BCD Counters, Clock Division, Register-Based Storage, 7-Segment Display Control

## Source Code

All Verilog modules are provided in the repository.

The top-level module is `stopwatch_top`, which instantiates and connects the other seven modules.

## Notes

This repository contains the RTL implementation of the FPGA stopwatch developed for an undergraduate digital circuit design laboratory project.
