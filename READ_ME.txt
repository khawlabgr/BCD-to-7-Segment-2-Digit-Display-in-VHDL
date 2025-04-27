                                     ---------------------------------------------
                                        BCD to 7-Segment 2-Digit Display in VHDL
                                     ---------------------------------------------

## Overview

This project demonstrates a BCD (Binary Coded Decimal) to 7-segment display decoder for a 2-digit display. It is written in VHDL and targets FPGA implementations. The code includes two main components:

- Counter (compteurBCD): Generates BCD values and manages overflow to transition between digits.
- 7-Segment Display Decoder (bcd7seg): Converts BCD values to the appropriate 7-segment display format.

The project allows you to display two BCD digits on two separate 7-segment displays, updating every clock cycle.

---

## Components

- compteurBCD (BCD Counter)
The 'compteurBCD' component counts in BCD format. It provides a 4-bit output (`cout`) representing the current BCD value and an overflow signal for transitioning to the next digit.

- bcd7seg (BCD to 7-Segment Decoder)
The 'bcd7seg' component converts a 4-bit BCD input into a 7-bit output that drives a 7-segment display. It converts BCD digits (0-9) into the appropriate segment patterns for display.

---

## Features

- Two-digit BCD display: The system supports the display of two BCD digits.
- Overflow handling: The `compteurBCD` handles overflow from the first digit to the second.
- FPGA-compatible: The project is written in VHDL and is designed for FPGA implementation.

---

## File Structure

- **bcd7seg2digit.vhd**: Main VHDL code for the BCD to 7-segment display converter.
- **compteurBCD.vhd**: Counter component for generating BCD values.
- **bcd7seg.vhd**: Decoder component for converting BCD to 7-segment format.

---

## How to Use

1. Clone the repository to your local machine.
2. Open the project in Xilinx ISE or another VHDL development environment.
3. Compile the design and implement it on an FPGA board that supports 7-segment displays.
4. Connect the `seg1` and `seg2` outputs to the respective 7-segment displays.

---

## Contributions

Feel free to fork the repository and submit pull requests if you'd like to contribute to the development or enhancement of this project.

---

## License

This project is licensed under the MIT License - see the LICENSE file for details.
