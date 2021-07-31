x = [1 1 1]
h = [1 1 1]
clin = conv(x,h)

subplot(2,1,1)
stem(clin,'filled')
title('linear Convolution of x and h')



x = [0 1 2 3 4]
h = [0 2 3 4 5]
clin = conv(x,h)

subplot(2,1,2)
stem(clin,'filled')
title('linear Convolution of x and h')


