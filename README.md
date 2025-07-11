# Mole-Smash-Game 
It is an FPGA-based game implemented in Verilog, featuring an FSM to control the LED and switch I/O. Includes integrated timer logic, real-time scoring, and output

The Mole Smash Game is a digital interactive game implemented in Verilog using a state machine-based design. The player must "smash" the mole by pressing the correct switch (sw[x]) corresponding to a randomly lit LED (led[x]). Each correct hit advances the game state and increments the score count. The game progresses through predefined LED-switch combinations, ending after 32 successful hits.

This project includes:
A Finite State Machine (FSM) handling mole appearances and switch detection.
The game logic is implemented using case statements and state transitions.
A seven-segment display displays a score counter (connected via UBCD and segment decoders).
Integration-ready with Xilinx Vivado, supporting simulation and implementation on FPGA boards like Basys 3.

# Features 
Finite State Machine (FSM): Controls game progression and LED sequence logic based on user input.

Integrated Timer Logic: Built-in clock-based timing for LED activation and transitions.

Score Counter: score_count register tracks correct player responses across game states.

LED and Switch I/O: LEDs represent moles "popping up"; corresponding switches act as "hammers".

BCD to 7-Segment Display: Shows real-time score feedback for enhanced interactivity.

Reset Functionality: Reset input restarts the game from the initial state.

Testbench Simulates clock pulses and reset signals and Mimics user inputs through switch toggles



# Tools & Technologies
Verilog HDL

Xilinx Vivado

RTL Simulation

# Screenshot
<img width="750" height="400" alt="Screenshot 2025-07-11 153829" src="https://github.com/user-attachments/assets/747dd742-0389-4b42-bbfb-5ddff0446955" />

# Testbench
<img width="750" height="400" alt="Screenshot 2025-07-11 164050" src="https://github.com/user-attachments/assets/bce4c0f4-ca36-45cf-a7af-cf489d695dd8" />


