# 3 To 8 Decoder 

This VHDL program implements a 3-to-8 decoder, a fundamental digital logic circuit used in digital electronics. A 3-to-8 decoder takes a 3-bit input and produces an 8-bit output, with one of the eight output lines being active (high) based on the binary value of the input.

![OIP](https://github.com/Mesheswarage/VHDL/assets/97176530/259f9270-ee96-458d-ad33-3347be13aef6)

## Functionality

- **Inputs:**
  - `S2`, `S1`, `S0`: The 3-bit binary input lines.
  - `E`: The enable bit. When `E` is high (1), the decoder is active; when low (0), it is in a standby state.

- **Outputs:** It generates 8 output lines (`Y0` to `Y7`).

- **Operation:** Based on the binary input value and the state of the enable bit (`E`), the decoder will either produce an active (high) output line or remain in a standby state.


 You can simulate this VHDL program using Xilinx Vivado. This allows you to observe the decoder's behavior and verify its correctness under various input and enable bit conditions.

 ## Files

- `3to8_Decoder\Exercise01.srcs\sources_1\new\three2eight_decoder.vhdl`: The VHDL source code for the 3-to-8 decoder module with an enable bit.
- `3to8_Decoder\Exercise01.srcs\sim_1\new\three2eight_decoder_tb.vhdl`: A testbench for simulating the 3-to-8 decoder and verifying its functionality, including the behavior with the enable bit.

### Simulation window

![Screenshot (547)](https://github.com/Mesheswarage/VHDL/assets/97176530/9ab5171d-9d80-4819-891a-b58eeb2b6bf6)
