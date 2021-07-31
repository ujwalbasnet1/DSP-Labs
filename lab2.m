% Task1 : Generate a continuous time sinusoidal wave of amplitude 5.
subplot(3,3,1)
x = -20:0.2:20
y = 5 * sin(x)
plot(x,y)
xlabel("x")
ylabel("y")
title("continuous time sinusoidal wave of amplitude 5")


% Task2 : Generate a unit impulse function.
subplot(3,3,2)
y(x!=0) = 0
y(x==0) = 1
stem(x,y)
xlabel("x")
ylabel("y")
title("unit impulse function")


% Task3 : Generate a unit step function.
subplot(3,3,3)
y(x<0) = 0
y(x>=0) = 1
stem(x,y)
xlabel("x")
ylabel("y")
title("unit step function")


% Task4 : Generate a unit ramp function.
subplot(3,3,4)
%y(x<0) = 0
y = (x >= 0) .* x
stem(x,y)
xlabel("x")
ylabel("y")
title("unit ramp function")


% Task5 : Generate a continuous time sinc function
subplot(3,3,5)
y = zeros(1, length(x))
y(x != 0) = sin(x(x!=0)) ./ x(x!=0)
y(x == 0) = 1
plot(x,y)
xlabel("x")
ylabel("y")
title("continuous time sinc function")


% Task6 : Generate a continuous time exponential (growing, decaying, DC signal)
subplot(3,3,6)
y = exp(x)
plot(x,y)
xlabel("x")
ylabel("y")
title("continuous time exponential growing")

subplot(3,3,7)
y = exp(-x)
plot(x,y)
xlabel("x")
ylabel("y")
title("continuous time exponential decaying")

subplot(3,3,8)
y = 2
plot(x,y)
xlabel("x")
ylabel("y")
title("dc signal")
