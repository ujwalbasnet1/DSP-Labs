x1 = [1, 2, 2, 0]
x2 = [1, 2, 3, 4]

l1 = length(x1)
l2 = length(x2)


if l1 > l2
  x2 = [x2, zeros(1, l1 - l2)]
elseif l1 < l2
  x1 = [x1, zeros(1, l2 - l1)]
end

n = max(l1, l2)

y = zeros(1,n)

for m = 0:n-1
  for o = 0:n-1
    z = mod(m-o , n);
    y(m + 1) = y(m + 1) + x1(o + 1) .* x2(z + 1)
  end
end

subplot(1,2,1)
stem(y)
xlabel('x1 * x2');
ylabel("samples");
title("cicular convolution of given signals");
