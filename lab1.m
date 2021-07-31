%{
    clc         - clears command window
    close       - closes all figures whose handles are visible
    xlabel      - labels x-axis of a plot
    ylabel      - labels y-axis of a plot
    zlabel      - labels z-axis of a plot
    title       - adds title to the plot
    figure      - figure creates a new figure window using default property values. 
    subplot     - subplot(m,n,p) divides figure into m*n grid and plot axes in position p 
    linspace    - linspace(a,b,n) generates n points 
                  equally spaced between a and b, default value for n is 100
    stem        - stem(Y) plots the data sequence, Y, 
                  as stems that extend from a baseline along the x-axis.
    bar         - plots bar graph
    plot        - plots 2D line plot
%}

x = linspace(0,10,10)
y = linspace(10,20,10)
plot(x,y)
xlabel("x-axis")
ylabel("y-axis")
title("title")

% Task1: Create a matrix, A of size 3*4. Create another matrix, B of size 4*3.
A = [1,1,2,1;
    2,2,1,2;
    1,2,3,5]

B = [2,6,0;
    5,2,3;
    2,2,1;
    2,3,4]

% Task2: Add Matrix A and B. Subtract A from B.
% add = A + B
% error: operator +: nonconformant arguments (op1 is 3x4, op2 is 4x3)

% sub = A - B
% error: operator -: nonconformant arguments (op1 is 3x4, op2 is 4x3)

% Task3: Multiply A and B. Multiply B and A [Errors Reason ?].
mulAB = A * B
mulBA = B * A

% Task4: Transpose matrix A and B. Multiply the transposed matrices.
tA = A'
tB = B'

tMulAB = tA * tB
tMulBA = tB * tA

