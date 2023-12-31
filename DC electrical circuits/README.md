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

## Start of the first part of the experiment - testing the resistor

Results after testing the resistor Rt = 100 Ω ± 10 Ω 

![Photo3](images/photo3.png)

Where: <br>
Nr. - ordinal order <br>
Uz - bulb voltage [V] <br>
Ur - resistor voltage [V] <br>
Ir - resistor current [mA] <br>
R - electrical resistance [Ω] <br>

<br>

## Problem 1.1: calculation of resistance

To calculate the resistance you need to use the resistance formula. This formula is given in "additional formulas". Then substitute for the letter "U" the results from the measurements "Ur[V]" and for the letter I the results from the measurements "Ir[mA]". At the very end, we must remember that the results from the measurements of "Ir" are given in "[mA]". This means that we have to multiply the result times 1000 to get the value expressed in "[A]".

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
% % U - electrical voltage [V]
% % I - electric current [mA]
Ur = [0.60 1.09 1.57 2.06 2.55 3.04 3.52 4.02 4.51 4.96 5.48 5.93 6.43 6.92 7.41 7.87 8.37 8.84 9.31 9.82 10.30 10.78 11.27 11.73];
Ir = [6.00 11.00 15.90 20.90 25.90 30.80 35.70 40.70 45.70 50.20 55.40 60.00 64.90 69.90 74.90 79.50 84.40 89.10 93.90 99.00 103.70 108.50 113.30 117.90];

% % calculations
R = Ur ./ Ir * 1000;

% % rounding to 2 decimal places
R = round(R, 2);

% % display of result
disp(R);
```
### The result:

![problem1_solution](images/problem1_solution.png)

<br>

After the calculation, we complete the table:

![Photo1](images/photo1.png)

Where: <br>
Nr. - ordinal order <br>
Uz - bulb voltage [V] <br>
Ur - resistor voltage [V] <br>
Ir - resistor current [mA] <br>
R - electrical resistance [Ω] <br>

<br>

## Problem 1.2: average calculation for resistor

To calculate the average resistor, we need to add the values from the table and then divide by its amount. For this we will use the values from the table signed as "Uz[V]" and "Ur[V]".  On this occasion, we can calculate the difference of the given values.

### Solution:

```matlab
% % /==================================\
% % | AVERAGE CALCULATION FOR RESISTOR |
% % \==================================/

% % close and clear
clear all;
close all;
clc;

% % calculation of the average
average_Uz_resistor = (0.50 + 1.00 + 1.50 + 2.00 + 2.50 + 3.00 + 3.50 + 4.00 + 4.50 + 5.00 + 5.50 + 6.00 + 6.50 + 7.00 + 7.50 + 8.00 + 8.50 + 9.00 + 9.50 + 10.00 + 10.50 + 11.00 + 11.50 + 12.00) / 24;
average_Ur_resistor = (0.60 + 1.09 + 1.57 + 2.06 + 2.55 + 3.04 + 3.52 + 4.02 + 4.51 + 4.96 + 5.48 + 5.93 + 6.43 + 6.92 + 7.41 + 7.87 + 8.37 + 8.84 + 9.31 + 9.82 + 10.30 + 10.78 + 11.27 + 11.73) / 24;

% % calculation of the difference
average_resistor = average_Uz_resistor - average_Ur_resistor;

% % show data
fprintf("Average of Uz: %f\n", average_Uz_resistor);
fprintf("Average of Ur: %f\n", average_Ur_resistor);
fprintf("Average of the resistor: %f\n", average_resistor);
```

### The result:

![problem2_solution](images/problem2_solution.png)

<br>

## Problem 1.3: measurement relationships

### Linear regression of the voltage-amperage relationship for a resistor

At this stage we start drawing graphs. 

<br>

We want to show on the graph the relationship between the electric voltage "Ur[V]" and the electric current "Ir[A]". 

### Solution:

```matlab
% % /===========================\
% % | MEASUREMENT RELATIONSHIPS |
% % \===========================/

% % Linear regression of the voltage-amperage relationship for a resistor

% % close and clear
clear all;
close all;
clc;

% % input data
% % U - electrical voltage [V]
% % I - electric current [mA]
Ur = [0.60 1.09 1.57 2.06 2.55 3.04 3.52 4.02 4.51 4.96 5.48 5.93 6.43 6.92 7.41 7.87 8.37 8.84 9.31 9.82 10.30 10.78 11.27 11.73];
Ir = [6.00 11.00 15.90 20.90 25.90 30.80 35.70 40.70 45.70 50.20 55.40 60.00 64.90 69.90 74.90 79.50 84.40 89.10 93.90 99.00 103.70 108.50 113.30 117.90];

% % plot drawing
axes('FontSize', 20, 'NextPlot', 'add');
grid on

% %  creates a scatter plot with circular markers at the locations specified by the vectors x and y.
scatter(Ir, Ur, Color='k', LineWidth=2)

% % captions for the graph
title('Voltage-amperage relationship graph for a resistor', 'FontSize',22);
xlabel('I[mA]', 'FontSize',22, 'FontWeight','bold');
ylabel('U[V]', 'FontSize',22, 'FontWeight','bold');
```

### The result:

![problem3_graph1](images/problem3_graph1.png)

As we can see a window has appeared however, this is not the graph we wanted. 

<br>

What to do to show the full graph?

<br>

When you expand the window, you will see a "Tools" tab on the left. Click on it.

![problem3_info1](images/problem3_info1.png)

Then click on the "Basic Fitting" options.

![problem3_info2](images/problem3_info2.png)

After a while, a window will appear in the lower right corner.

![problem3_info3](images/problem3_info3.png)

Here we select all the options that are necessary for our chart. I personally mark in "TYPES OF FIT" the option "Linear" and "Quadratic".

![problem3_info4](images/problem3_info4.png)

After checking these options, our window should look more or less like the one below. In "FIT RESULTS" we can show or hide detailed information on the chart, change the accuracy range and more.

<br>

Now our graph should look more or less like the following.

![problem3_info5](images/problem3_info5.png)

To change the caption on the information table, double-click on the information you want to change. You can also change its position by dragging this table to any place. in addition, using the scrollbar you can zoom in or out of the chart. By holding down the left mouse button, you can also align the chart so that it always shows in the position you want it to. For the example below I have changed the above mentioned things.

![problem3_info6](images/problem3_info6.png)

<br>

### Analysis of the measurement for a resistor

The results of the voltage to current ratio for a resistor in which the manufacturer declared a voltage of 100Ω (±10%) in the range from 0-12V indicates that an increase in voltage affects the simultaneous increase in current, which confirms for us the operation of the law of Ohm's I=U/R, i.e. that the current flowing through a conductor is directly proportional to the voltage applied between its ends.

<br>

<br>

<br>

### In the rest of the solution, I will not show how to enable the appropriate settings for graphs. I recommend that you acquire this knowledge or return to this point.

<br>

<br>

## Problem 1.4: measurement uncertainties

### Graph of measurement uncertainties as a function of voltage versus current for a resistor

We want to show the measurement uncertainties against "Uz[V]", "Ur[V]" and Ir[mA]. 

### Solution:

```matlab
% % /===========================\
% % | MEASUREMENT UNCERTAINTIES |
% % \===========================/

% % Graph of measurement uncertainties as a function of voltage versus current for a resistor

% % close and clear
clear all
close all
clc

% % input data
% % U - electrical voltage [V]
% % I - electric current [mA]
Uz = [0.50 1.00 1.50 2.00 2.50 3.00 3.50 4.00 4.50 5.00 5.50 6.00 6.50 7.00 7.50 8.00 8.50 9.00 9.50 10.00 10.50 11.00 11.50 12.00];
Ur = [0.60 1.09 1.57 2.06 2.55 3.04 3.52 4.02 4.51 4.96 5.48 5.93 6.43 6.92 7.41 7.87 8.37 8.84 9.31 9.82 10.30 10.78 11.27 11.73];
Ir = [6.00 11.00 15.90 20.90 25.90 30.80 35.70 40.70 45.70 50.20 55.40 60.00 64.90 69.90 74.90 79.50 84.40 89.10 93.90 99.00 103.70 108.50 113.30 117.90];

% % plot drawing
scatter(Ir, Uz,Color='k', LineWidth=2)
grid on
hold on
scatter(Ir, Ur,'*',Color='k', LineWidth=1)
hold off

% % captions for the graph
title('Graph of measurement uncertainties as a function of voltage versus current for a resistor', 'FontSize',22);
xlabel('I[mA]', 'FontSize',22, 'FontWeight','bold');
ylabel('U[V]', 'FontSize',22, 'FontWeight','bold');
```

### The result:

![problem4](images/problem4.png)

<br>

### Uncertainty analysis of voltage-amperage relationship measurements for a resistor

Analyzing the results in the chart above, it can be seen that the Uz and Ur points differ from each other as this is due to the uncertainty of the measurement hardware.

<br>

<br>

<br>

<br>

## Start of the second part of the experiment - Testing the light bulb

Results after testing the light bulb

![Photo2](images/photo2.png)

Where: <br>
Nr. - ordinal order <br>
Uz - bulb voltage [V] <br>
Ur - resistor voltage [V] <br>
Ir - resistor current [mA] <br>
R - electrical resistance [Ω] <br>
t - temperature [°C]

## Problem 2.1: calculation of resistance

To calculate the resistance you need to use the resistance formula. This formula is given in "additional formulas". Then substitute for the letter "U" the results from the measurements "Ur[V]" and for the letter I the results from the measurements "Ir[mA]". At the very end, we must remember that the results from the measurements of "Ir" are given in "[mA]". This means that we have to multiply the result times 1000 to get the value expressed in "[A]".

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
% % U - electrical voltage [V]
% % I - electric current [mA]
Ur = [0.49 0.96 1.42 1.90 2.32 2.76 3.43 3.93 4.44 4.91 5.35 5.83];
Ir = [79.00 109.80 135.80 159.10 179.80 197.80 225.00 242.00 259.00 274.00 287.00 301.00];

% % calculations
R = Ur ./ Ir * 1000;

% % rounding to 2 decimal places
R = round(R, 2);

% % display of result
disp(R);
```

### The result:

![problem2.1_solution](images/problem2.1_solution.png)

<br>

After the calculation, we complete the table:

![photo2.1](images/photo2.1.png)

Where: <br>
Nr. - ordinal order <br>
Uz - bulb voltage [V] <br>
Ur - resistor voltage [V] <br>
Ir - resistor current [mA] <br>
R - electrical resistance [Ω] <br>
t - temperature [°C]

## Problem 2.2: calculation of temperature

We will use part of the code we saw above to calculate the temperature of the bulb. From this we will be able to calculate the temperature. We will calculate the temperature from the formula that was given at the very beginning.

### Solution:

```matlab
% % /===========================\
% % | TEMPERATURE OF LIGHT BULB |
% % \===========================/

% % close and clear
clear all;
close all;
clc;

% % Set format to display full precision (scientific notation)
format long g; 

% % input data
% % Ur - electrical voltage [V]
% % Ir - electric current [mA]
Ur = [0.49 0.96 1.42 1.90 2.32 2.76 3.43 3.93 4.44 4.91 5.35 5.83];
Ir = [79.00 109.80 135.80 159.10 179.80 197.80 225.00 242.00 259.00 274.00 287.00 301.00];

% % calculations
R = Ur ./ Ir * 1000;

% % rounding to 2 decimal places
R = round(R, 2);

% % display of result R with numbering
fprintf("R:\n");

for i = 1:numel(R)
    fprintf("R%d: %.2f\n", i, R(i));
end


% % Constants for the formula
t0 = 25;
a = 0.0051;
R0 = 2.1;

% % Calculate t for each resistance value in the array
t = (((R / R0) - 1) / a) + t0;

% % rounding to 2 decimal places
t = round(t, 2);

% % display of result t with numbering
fprintf("\nt:\n");

for i = 1:numel(t)
    fprintf("t%d: %.2f\n", i, t(i));
end
```

### The result:

![problem2.2](images/problem2.2.png)

<br>

After the calculation, we complete the table:

![photo2.2](images/photo2.2.png)

Where: <br>
Nr. - ordinal order <br>
Uz - bulb voltage [V] <br>
Ur - resistor voltage [V] <br>
Ir - resistor current [mA] <br>
R - electrical resistance [Ω] <br>
t - temperature [°C]

## Problem 2.3: average calculation for light bulb

To calculate the average resistance of light bulb, we need to add the values from the table and then divide by its amount. For this we will use the values from the table signed as "Uz[V]" and "Ur[V]". On this occasion, we can calculate the difference of the given values.

### Solution:

```matlab
% % /====================================\
% % | AVERAGE CALCULATION FOR LIGHT BULB |
% % \====================================/

% % close and clear
clear all;
close all;
clc;

% % calculation of the average
average_Uz_bulb = (0.50 + 1.00 + 1.50 + 2.00 + 2.50 + 3.00 + 3.50 + 4.00 + 4.50 + 5.00 + 5.50 + 6.00) / 12;
average_Ur_bulb = (0.49 + 0.96 + 1.42 + 1.90 + 2.32 + 2.76 + 3.43 + 3.93 + 4.44 + 4.91 + 5.35 + 5.83) / 12;

% % calculation of the difference
average_bulb = average_Uz_bulb - average_Ur_bulb;

% % show data
fprintf("Average of Uz: %f\n", average_Uz_bulb);
fprintf("Average of Ur: %f\n", average_Ur_bulb);
fprintf("Average of the resistor: %f\n", average_bulb);
```

### The result:

![problem2.3_solution](images/problem2.3_solution.png)

## Problem 2.4: measurement uncertainties

### Voltage vs. amperage measurement uncertainty graph for an incandescent light bulb.

We want to show the measurement uncertainties against "Uz[V]", "Ur[V]" and Ir[mA]. 

### Solution:

```matlab
% % /===================================================================================\
% % | Voltage vs. amperage measurement uncertainty graph for an incandescent light bulb |
% % \===================================================================================/

% % close and clear
clear all;
close all;
clc;

% % input data
% % U - electrical voltage [V]
% % I - electric current [mA]
Uz = [0.50 1.00 1.50 2.00 2.50 3.00 3.50 4.00 4.50 5.00 5.50 6.00];
Ir = [79.00 109.80 135.80 159.10 179.80 197.80 225.00 242.00 259.00 274.00 287.00 301.00];
Ur = [0.49 0.96 1.42 1.90 2.32 2.76 3.43 3.93 4.44 4.91 5.35 5.83];

% % plot drawing
scatter(Ir, Uz, Color='k', LineWidth=2)
grid on
hold on
scatter(Ir, Ur, '*', Color='k', LineWidth=1)
hold off

% % captions for the graph
title('Voltage vs. amperage measurement uncertainty graph for an incandescent light bulb', 'FontSize',22);
xlabel('I[mA]', 'FontSize',22, 'FontWeight','bold');
ylabel('U[V]', 'FontSize',22, 'FontWeight','bold');
```

### The result:

![problem5](images/problem5.png)

Analysis of measurement uncertainty for the tungsten bulb - from the above data it can be concluded that the voltage Uz and UR differ from each other and this is due to the measurement uncertainty of the various tools that verify the measurements.

<br>

Uz - the voltage indicated by the device(battery), UR - the voltage indicated by the voltmeter.

## Problem 2.5: temperature and intensity

### Temperature-intensity relationship graph for an incandescent bulb

### Solution:

```matlab
% % /===========================\
% % | TEMPERATURE AND INTENSITY |
% % \===========================/

% % close and clear
clear all;
close all;
clc;

% % input data
R = [408.00 640.31 806.51 943.77 1033.40 1131.44 1251.89 1345.26 1429.30 1502.12 1569.35 1638.00];
Ir = [79.00 109.80 135.80 159.10 179.80 197.80 225.00 242.00 259.00 274.00 287.00 301.00];

% % plot drawing
axes('FontSize', 20, 'NextPlot', 'add');
grid on
scatter(Ir, R, Color='k', LineWidth=2)
title('Temperature-intensity relationship graph for an incandescent bulb', 'FontSize',22);
xlabel('I[mA]', 'FontSize',22, 'FontWeight','bold');
ylabel('T[°C]', 'FontSize',22, 'FontWeight','bold');
```

### The result:

![problem6](images/problem6.png)

Looking at the above graph, it can be concluded that as the intensity increases, the temperature increases.

<br>

T - temperature which was calculated from the formula.

## Problem 2.6: average bulb resistance vs. manufacturer

### Average resistance vs. manufacturer's stated resistance of the resistor.

### Solution:

```matlab
% % /==========================================\
% % | AVERAGE BULB RESISTANCE VS. MANUFACTURER |
% % \==========================================/

% % close and clear
clear all;
close all;
clc;

% % input data
t = (100.67 + 99.09 + 98.74 + 98.56 + 98.46 + 98.70 + 98.60 + 98.77 + 98.69 + 98.80 + 98.92 + 98.83 + 99.08 + 99.00 + 98.93 + 98.99 + 99.17 + 99.21 + 99.15 + 99.19 + 99.32 + 99.35 + 99.47 + 99.49)/24
v = 100.00
x=98.5:100.5;
y=0;

% % plot drawing
grid on
hold on
plot(x,y*ones(size(x)));
scatter(t,0,Color='k', LineWidth=2);
scatter(v,0,Color='k', LineWidth=2);% scatter(t,v,Color='k', LineWidth=2)
title('Average resistance vs. manufacturers stated resistance of the resistor', 'FontSize',22);
legend({'- axis','- average resistance of the resistor','- resistance of the resistor as specified by the manufacturer'});
xlabel('R[Ω]', 'FontSize',22, 'FontWeight','bold');
```

![problem7](images/problem7.png)

![problem2.6_solution](images/problem2.6_solution.png)

The graph shows the average of the resistance from our measurements versus the resistance of the resistor that the manufacturer states. The resistor meets the characteristics that the manufacturer, that is, it falls within the range of 100Ω ± 10Ω. From the graph, you can read that the resistance is only close to 100Ω.

## Problem 2.7: linear regression

### Linear regression of the voltage vs. intensity relationship for an incandescent light bulb.

### Solution:

```matlab
% % /===================\
% % | LINEAR REGRESSION |
% % \===================/

% % close and clear
clear all;
close all;
clc;

% % input data
u = [0.49 0.96 1.42 1.90 2.32 2.76 3.43 3.93 4.44 4.91 5.35 5.83];
i = [79.00 109.80 135.80 159.10 179.80 197.80 225.00 242.00 259.00 274.00 287.00 301.00];

% % plot drawing
axes('FontSize', 20, 'NextPlot', 'add');
grid on
scatter(i,u,Color='k', LineWidth=2)
title('Wykres zależności napięcia od natężenia dla żarówki', 'FontSize',22);
xlabel('I[mA]', 'FontSize',22, 'FontWeight','bold');
ylabel('U[V]', 'FontSize',22, 'FontWeight','bold');
```

![problem8](images/problem8.png)

Analysis of the measurement for a tungsten bulb - the results of the voltage to current ratio for the bulb in the range from 0-6V, compared to the
analysis of the resistor, the measurement results for the incandescent bulb does not increase proportionally (voltage and amperage). It follows that in this case Ohm's law does not apply. Why? Because we are dealing with the specific resistance depending on the temperature of the bulb(the higher the temperature the higher the resistance).

<br>

UR - the voltage indicated by the voltmeter.

<br>

<br>

### The original text was in Polish. The task was translated using online translators.