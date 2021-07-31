N = 3
function void = getFourier(N)
  Ts = 0.01
  T = 2

  t = -T/2:Ts:T/2

  f(t < -T/4) = 0
  f((t >= -T/4) & (t <= T/4)) = 1
  f(t > T/4) = 0

  a = zeros(1, N+1)
  b = zeros(1, N+1)

  for n = 0:N
      a(n+1) = (2 * Ts / T) * sum(f .* cos(2 * pi * n * t / T))
      b(n+1) = (2 * Ts / T) * sum(f .* sin(2 * pi * n * t / T))
  end


  t = -2*T:Ts:2*T
  fs = (a(1)/2) * ones(size(t))

  for n = 1:N
      fs = fs + (a(n + 1) * cos(2*pi*n*t/T)) + (b(n + 1) * sin(2*pi*n*t/T)) 
  end

  plot(t,fs)

end  

subplot(2,2,1)
getFourier(3)
title("N = 3")

subplot(2,2,2)
getFourier(9)
title("N = 9")

subplot(2,2,3)
getFourier(100)
title("N = 100")
