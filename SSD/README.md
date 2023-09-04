# VHDL SSD Controller with 4-Bit Input and Enable

This VHDL project provides a design for controlling a Seven Segment Display (SSD) using a 4-bit input for data and an enable signal. It allows you to display different characters or numbers on the SSD by sending a 4-bit binary input.


![OIP](https://github.com/Mesheswarage/VHDL/assets/97176530/d459941e-9113-4af5-99dc-aa58be351345)


A typical SSD consists of seven individual LED segments arranged in a specific pattern to display numbers and some letters. Each segment can be individually controlled to form different characters. The program accepts a 4-bit binary input to select which character or number to display on the SSD. These 4 bits can represent values from 0 to 15 (in binary). There is an additional enable signal that controls whether the SSD should display the selected character or remain off. When the enable signal is active (typically high), the SSD will display the character corresponding to the 4-bit input.

## Functionality

- The program takes the 4-bit input (A, B, C, D) and interprets it as a binary number.
  
- Based on the binary number received, it selects the appropriate configuration of segments to display the corresponding digit or character on the SSD.
  
- The program also considers the enable signal. If the enable signal is active, it lights up the SSD segments to display the character; otherwise, it keeps the SSD segments off.

## Files

