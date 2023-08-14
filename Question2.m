a = 1 + mod(231, 3);
t = -5:0.01:5;
x = @(t) exp(-a * t);

subplot(2, 2, 1);
plot(t, x(t));
xlabel('Time')
ylabel('x(t)')
title('x(t)')

subplot(2, 2, 2);
plot(t, x(-t));
xlabel('Time')
ylabel('x(-t)')
title('x(-t)')

subplot(2, 2, 3);
plot(t, x(t - 1.5 * a));
xlabel('Time')
ylabel('x(t - 1.5)')
title('x(t - 1.5)')

subplot(2, 2, 4);
plot(t, x(2 * a * t));
xlabel('Time')
ylabel('x(2\alpha t)')
title('x(2t)')
