# FPGA-Based-Tic-Tac-Toe-Game-
FPGA-based Tic-Tac-Toe Game using Verilog HDL implemented in Xilinx Vivado.
## About the Project

This project is a simple implementation of the Tic-Tac-Toe game using Verilog HDL. I developed this project to improve my understanding of digital design concepts and FPGA programming. The design was created and simulated in Xilinx Vivado and is intended to run on an Artix-7 FPGA board.

The game allows a player and a computer to take turns placing their moves on a 3×3 board. It also checks for invalid moves, detects the winner, and identifies when the game ends in a draw.

## What I Learned

Working on this project helped me understand:

- Verilog HDL programming
- Sequential and combinational logic
- Designing game logic using hardware description language
- FPGA synthesis and simulation
- Creating and using XDC constraint files
- Testing designs using a Verilog testbench
- Basic hardware implementation in Vivado

## Project Features

- Player and computer turns
- Illegal move detection
- Winner detection
- Draw detection
- Behavioral simulation in Vivado
- FPGA implementation support

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Artix-7 FPGA Board

## Project Files

- **tic_tac_toe_game.v** – Main Verilog source code
- **tic_tac_toe_tb.v** – Testbench for simulation
- **tic_tac_toe.xdc** – Constraint file
- **tictactoe final pdf.pdf** – Complete project report

## Inputs

- Clock
- Reset button
- Play button
- PC button
- Player position (1–9)
- Computer position (1–9)

## Outputs

- Winner indication
- Illegal move indication
- Draw indication

## How the Game Works

1. Reset the game.
2. Select a position for the player using the switches.
3. Press the **Play** button to make the player's move.
4. Select the computer's position.
5. Press the **PC** button to make the computer's move.
6. The game continues until someone wins or all positions are filled.

## Simulation and Testing

The design was verified using a Verilog testbench in Xilinx Vivado. Different game scenarios such as valid moves, invalid moves, winner detection, and draw conditions were tested before hardware implementation.---

## Future Improvements

In the future, I would like to improve this project by adding:

- VGA display support
- Two-player mode
- Better computer move logic
- Score tracking
- OLED or LCD display support

## Author

**Gowthami Mahanthi**

B.Tech, Electronics and Communication Engineering

GMR Institute of Technology
