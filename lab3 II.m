cycle = 5
f = 2000    % 2 kHz = 2000 Hz

function void = drawGivenWave(a)
  cycle = 5
  f = 2000    % 2 kHz = 2000 Hz

  t = 0 : 0.00001 : cycle * 1 / f
  x = 5 * cos( 2 * pi * f * t )
  plot(t,x)
  title('cosine wave of f = 2kHz and cycle = 5');      
  xlabel('time')
  ylabel('amplitude')
  legend('cosine wave')
end


function void = sampleGivenWave(samplef)
  cycle = 5
  f = 2000

  ts = 0 : 1 / samplef : cycle * 1 / f
  xs = 5 * cos(2 * pi * f * ts)
  stem(ts,xs)
  hold on
  drawGivenWave()
  title(["sampling with f = ", num2str(samplef), " Hz"])
  legend(["fs = ",  num2str(samplef), " Hz"])
end


% Task 1: generating given signal
subplot(2,2,1)
drawGivenWave()

% Taks 2: sample with 5 KHz
subplot(2,2,2)
sampleGivenWave(5000)

% Taks 3: sample with 10 KHz
subplot(2,2,3)
sampleGivenWave(10000)

% Taks 4: sample with 20 KHz
subplot(2,2,4)
sampleGivenWave(20000)
