# Author of the solution: Narothe

### Purpose of the exercise:
1. To check Ohm's law.
2. To determine the temperature of the filament of the bulb.

<br>

### Course of the exercise:
1. Assemble a circuit consisting of a resistor, an ammeter (200 mA range), and a voltmeter (20 V range).
2. Vary the voltage U (0 - 6 V) and read the intensity I. Make an accurate note of ΔU and ΔI.
3. Change the resistor to an incandescent bulb and carry out analogous measurements.
4. Read the ambient temperature t0.

<br>

### Input data:
1. Alpha value: <br>
![Alpha](images/alpha.gif)

2. Ambient temperature: <br>
![t0](images/t0.gif)

3. Resistance of the resistor / bulb: <br>
![r0](images/r0.gif)

<br>

### Required physical formulas:
1. Average resistance: <br>
![Sr](images/Sr.gif)

2. Temperature calculation: <br>
![t](images/t.gif)

3. Resistance calculation: <br>
![r](images/r.gif)

<br>

### Additional formulas:

1. Resistance formula: <br>
![another_r](images/another_r.gif)

<br>

## Start of the experiment

Results after testing the resistor Rt = 100 Ω ± 10 Ω 

![Photo3](images/photo3.png)

Where: <br>
Nr. - ordinal order <br>
Uz - bulb voltage [V] <br>
Ur - resistor voltage [V] <br>
Ir - resistor current [mA] <br>
R - electrical resistance [Ω] <br>

<br>

## First problem: calculation of resistance

To calculate the resistance you need to use the resistance formula. This formula is given in "additional formulas". Then substitute for the letter "U" the results from the measurements "Ur[V]" and for the letter I the results from the measurements "Ir[mA]". At the very end, we must remember that the results from the measurements of "Ir" are given in "[mA]". This means that we have to multiply the result times 1000 to get the value expressed in "[A]".

<br>

### Solution:

```matlab
% % /===========================\
% % | CALCULATION OF RESISTANCE |
% % \===========================/

% % close and clear
clear all;
close all;
clc;

% % input data
Ur = [0.60 1.09 1.57 2.06 2.55 3.04 3.52 4.02 4.51 4.96 5.48 5.93 6.43 6.92 7.41 7.87 8.37 8.84 9.31 9.82 10.30 10.78 11.27 11.73];
Ir = [6.00 11.00 15.90 20.90 25.90 30.80 35.70 40.70 45.70 50.20 55.40 60.00 64.90 69.90 74.90 79.50 84.40 89.10 93.90 99.00 103.70 108.50 113.30 117.90];

% % calculations
R = Ur ./ Ir * 1000;

% % rounding to 2 decimal places
R = round(R, 2);

% % display of result
disp(R);
```

After the calculation, we complete the table.

![Photo1](images/photo1.png)

Where: <br>
Nr. - ordinal order <br>
Uz - bulb voltage [V] <br>
Ur - resistor voltage [V] <br>
Ir - resistor current [mA] <br>
R - electrical resistance [Ω] <br>

<br>

<br>

<br>

<br>

<br>

<br>

<br>

<br>

Bulb test

![Photo2](images/photo2.png)

Where: <br>
Nr. - ordinal order <br>
Uz - bulb voltage [V] <br>
Ur - resistor voltage [V] <br>
Ir - resistor current [mA] <br>
R - electrical resistance [Ω] <br>
t - temperature [°C]

<br>

<br>

The original text was in Polish. The task was translated using online translators.