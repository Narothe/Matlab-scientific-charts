% /=================================\
% |                                 |
% |     DC electrical circuits      |
% |                                 |
% | Author of the solution: Narothe |
% |   https://github.com/Narothe    |
% |                                 |
% \=================================/


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /=====================\
% % % | INFO / BEFORE START |
% % % \=====================/
%
% % % In order to make this code work, you need to uncomment the necessary lines of code you are interested in.
% % % Link to Solution: https://github.com/Narothe/Matlab-scientific-charts


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /=============================\
% % % |                             |
% % % |                             |
% % % | CALCULATIONS FOR A RESISTOR |
% % % |                             |
% % % |                             |
% % % \=============================/


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /===========================\
% % % | CALCULATION OF RESISTANCE |
% % % \===========================/
% 
% % % close and clear
% clear all;
% close all;
% clc;
% 
% % % input data
% % % U - electrical voltage [V]
% % % I - electric current [mA]
% Ur = [0.60 1.09 1.57 2.06 2.55 3.04 3.52 4.02 4.51 4.96 5.48 5.93 6.43 6.92 7.41 7.87 8.37 8.84 9.31 9.82 10.30 10.78 11.27 11.73];
% Ir = [6.00 11.00 15.90 20.90 25.90 30.80 35.70 40.70 45.70 50.20 55.40 60.00 64.90 69.90 74.90 79.50 84.40 89.10 93.90 99.00 103.70 108.50 113.30 117.90];
% 
% % % calculations
% R = Ur ./ Ir * 1000;
% 
% % % rounding to 2 decimal places
% R = round(R, 2);
% 
% % % display of result
% disp(R);


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /==================================\
% % % | AVERAGE CALCULATION FOR RESISTOR |
% % % \==================================/
% 
% % % close and clear
% clear all;
% close all;
% clc;
% 
% % % calculation of the average
% average_Uz_resistor = (0.50 + 1.00 + 1.50 + 2.00 + 2.50 + 3.00 + 3.50 + 4.00 + 4.50 + 5.00 + 5.50 + 6.00 + 6.50 + 7.00 + 7.50 + 8.00 + 8.50 + 9.00 + 9.50 + 10.00 + 10.50 + 11.00 + 11.50 + 12.00) / 24;
% average_Ur_resistor = (0.60 + 1.09 + 1.57 + 2.06 + 2.55 + 3.04 + 3.52 + 4.02 + 4.51 + 4.96 + 5.48 + 5.93 + 6.43 + 6.92 + 7.41 + 7.87 + 8.37 + 8.84 + 9.31 + 9.82 + 10.30 + 10.78 + 11.27 + 11.73) / 24;
% 
% % % calculation of the difference
% average_resistor = average_Uz_resistor - average_Ur_resistor;
% 
% % % show data
% fprintf("Average of Uz: %f\n", average_Uz_resistor);
% fprintf("Average of Ur: %f\n", average_Ur_resistor);
% fprintf("Average of the resistor: %f\n", average_resistor);


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /===========================\
% % % | MEASUREMENT RELATIONSHIPS |
% % % \===========================/
% 
% % % Linear regression of the voltage-amperage relationship for a resistor
% 
% % % close and clear
% clear all;
% close all;
% clc;
% 
% % % input data
% % % U - electrical voltage [V]
% % % I - electric current [mA]
% Ur = [0.60 1.09 1.57 2.06 2.55 3.04 3.52 4.02 4.51 4.96 5.48 5.93 6.43 6.92 7.41 7.87 8.37 8.84 9.31 9.82 10.30 10.78 11.27 11.73];
% Ir = [6.00 11.00 15.90 20.90 25.90 30.80 35.70 40.70 45.70 50.20 55.40 60.00 64.90 69.90 74.90 79.50 84.40 89.10 93.90 99.00 103.70 108.50 113.30 117.90];
% 
% % % plot drawing
% axes('FontSize', 20, 'NextPlot', 'add');
% grid on
% 
% % %  creates a scatter plot with circular markers at the locations specified by the vectors x and y.
% scatter(Ir, Ur, Color='k', LineWidth=2)
% 
% % % captions for the graph
% title('Voltage-amperage relationship graph for a resistor', 'FontSize',22);
% xlabel('I[mA]', 'FontSize',22, 'FontWeight','bold');
% ylabel('U[V]', 'FontSize',22, 'FontWeight','bold');


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /===========================\
% % % | MEASUREMENT UNCERTAINTIES |
% % % \===========================/
% 
% % % Graph of measurement uncertainties as a function of voltage versus current for a resistor
% 
% % % close and clear
% clear all
% close all
% clc
% 
% % % input data
% % % U - electrical voltage [V]
% % % I - electric current [mA]
% Uz = [0.50 1.00 1.50 2.00 2.50 3.00 3.50 4.00 4.50 5.00 5.50 6.00 6.50 7.00 7.50 8.00 8.50 9.00 9.50 10.00 10.50 11.00 11.50 12.00];
% Ur = [0.60 1.09 1.57 2.06 2.55 3.04 3.52 4.02 4.51 4.96 5.48 5.93 6.43 6.92 7.41 7.87 8.37 8.84 9.31 9.82 10.30 10.78 11.27 11.73];
% Ir = [6.00 11.00 15.90 20.90 25.90 30.80 35.70 40.70 45.70 50.20 55.40 60.00 64.90 69.90 74.90 79.50 84.40 89.10 93.90 99.00 103.70 108.50 113.30 117.90];
% 
% % % plot drawing
% scatter(Ir, Uz,Color='k', LineWidth=2)
% grid on
% hold on
% scatter(Ir, Ur,'*',Color='k', LineWidth=1)
% hold off
% 
% % % captions for the graph
% title('Graph of measurement uncertainties as a function of voltage versus current for a resistor', 'FontSize',22);
% xlabel('I[mA]', 'FontSize',22, 'FontWeight','bold');
% ylabel('U[V]', 'FontSize',22, 'FontWeight','bold');


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /===============================\
% % % |                               |
% % % |                               |
% % % | CALCULATIONS FOR A LIGHT BULB |
% % % |                               |
% % % |                               |
% % % \===============================/


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


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


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /====================================\
% % % | AVERAGE CALCULATION FOR LIGHT BULB |
% % % \====================================/
% 
% % % close and clear
% clear all;
% close all;
% clc;
% 
% % % calculation of the average
% average_Uz_bulb = (0.50 + 1.00 + 1.50 + 2.00 + 2.50 + 3.00 + 3.50 + 4.00 + 4.50 + 5.00 + 5.50 + 6.00) / 12;
% average_Ur_bulb = (0.49 + 0.96 + 1.42 + 1.90 + 2.32 + 2.76 + 3.43 + 3.93 + 4.44 + 4.91 + 5.35 + 5.83) / 12;
% 
% % % calculation of the difference
% average_bulb = average_Uz_bulb - average_Ur_bulb;
% 
% % % show data
% fprintf("Average of Uz: %f\n", average_Uz_bulb);
% fprintf("Average of Ur: %f\n", average_Ur_bulb);
% fprintf("Average of the resistor: %f\n", average_bulb);


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /===========================\
% % % | TEMPERATURE OF LIGHT BULB |
% % % \===========================/
% 
% % % close and clear
% clear all;
% close all;
% clc;
% 
% % % Set format to display full precision (scientific notation)
% format long g; 
% 
% % % input data
% % % Ur - electrical voltage [V]
% % % Ir - electric current [mA]
% Ur = [0.49 0.96 1.42 1.90 2.32 2.76 3.43 3.93 4.44 4.91 5.35 5.83];
% Ir = [79.00 109.80 135.80 159.10 179.80 197.80 225.00 242.00 259.00 274.00 287.00 301.00];
% 
% % % calculations
% R = Ur ./ Ir * 1000;
% 
% % % rounding to 2 decimal places
% R = round(R, 2);
% 
% % % display of result R with numbering
% fprintf("R:\n");
% 
% for i = 1:numel(R)
%     fprintf("R%d: %.2f\n", i, R(i));
% end
% 
% 
% % % Constants for the formula
% t0 = 25;
% a = 0.0051;
% R0 = 2.1;
% 
% % % Calculate t for each resistance value in the array
% t = (((R / R0) - 1) / a) + t0;
% 
% % % rounding to 2 decimal places
% t = round(t, 2);
% 
% % % display of result t with numbering
% fprintf("\nt:\n");
% 
% for i = 1:numel(t)
%     fprintf("t%d: %.2f\n", i, t(i));
% end


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /===========================\
% % % | MEASUREMENT UNCERTAINTIES |
% % % \===========================/
% 
% % % close and clear
% clear all;
% close all;
% clc;
% 
% % % input data
% % % U - electrical voltage [V]
% % % I - electric current [mA]
% Uz = [0.50 1.00 1.50 2.00 2.50 3.00 3.50 4.00 4.50 5.00 5.50 6.00];
% Ir = [79.00 109.80 135.80 159.10 179.80 197.80 225.00 242.00 259.00 274.00 287.00 301.00];
% Ur = [0.49 0.96 1.42 1.90 2.32 2.76 3.43 3.93 4.44 4.91 5.35 5.83];
% 
% % % plot drawing
% scatter(Ir, Uz, Color='k', LineWidth=2)
% grid on
% hold on
% scatter(Ir, Ur, '*', Color='k', LineWidth=1)
% hold off
% 
% % % captions for the graph
% title('Voltage vs. amperage measurement uncertainty graph for an incandescent light bulb', 'FontSize',22);
% xlabel('I[mA]', 'FontSize',22, 'FontWeight','bold');
% ylabel('U[V]', 'FontSize',22, 'FontWeight','bold');


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /===========================\
% % % | TEMPERATURE AND INTENSITY |
% % % \===========================/
% 
% % % close and clear
% clear all;
% close all;
% clc;
% 
% % % input data
% R = [408.00 640.31 806.51 943.77 1033.40 1131.44 1251.89 1345.26 1429.30 1502.12 1569.35 1638.00];
% Ir = [79.00 109.80 135.80 159.10 179.80 197.80 225.00 242.00 259.00 274.00 287.00 301.00];
% 
% % % plot drawing
% axes('FontSize', 20, 'NextPlot', 'add');
% grid on
% scatter(Ir, R, Color='k', LineWidth=2)
% title('Temperature-intensity relationship graph for an incandescent bulb', 'FontSize',22);
% xlabel('I[mA]', 'FontSize',22, 'FontWeight','bold');
% ylabel('T[°C]', 'FontSize',22, 'FontWeight','bold');


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


% % % /==========================================\
% % % | AVERAGE BULB RESISTANCE VS. MANUFACTURER |
% % % \==========================================/
% 
% % % close and clear
% clear all;
% close all;
% clc;
% 
% % % input data
% t = (100.67 + 99.09 + 98.74 + 98.56 + 98.46 + 98.70 + 98.60 + 98.77 + 98.69 + 98.80 + 98.92 + 98.83 + 99.08 + 99.00 + 98.93 + 98.99 + 99.17 + 99.21 + 99.15 + 99.19 + 99.32 + 99.35 + 99.47 + 99.49)/24
% v = 100.00
% x=98.5:100.5;
% y=0;
% 
% % % plot drawing
% grid on
% hold on
% plot(x,y*ones(size(x)));
% scatter(t,0,Color='k', LineWidth=2);
% scatter(v,0,Color='k', LineWidth=2);% scatter(t,v,Color='k', LineWidth=2)
% title('Average resistance vs. manufacturers stated resistance of the resistor', 'FontSize',22);
% legend({'- axis','- average resistance of the resistor','- resistance of the resistor as specified by the manufacturer'});
% xlabel('R[Ω]', 'FontSize',22, 'FontWeight','bold');


% % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % % 


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
title('Voltage-amperage relationship graph for an incandescent light bulb', 'FontSize',22);
xlabel('I[mA]', 'FontSize',22, 'FontWeight','bold');
ylabel('U[V]', 'FontSize',22, 'FontWeight','bold');

