a = 1 + mod(231, 3);
t = -1:0.01:1;

subplot(2, 2, 1);
y1 = sin(20 * pi * a * t);
plot(t, y1)
xlabel('Time')
ylabel('y1')


subplot(2, 2, 2);
y2 = cos(5 * pi * a * t + pi/4);
plot(t, y2)
xlabel('Time')
ylabel('y2')


subplot(2, 2, 3);
y3 = exp(-1 * a * t);
plot(t, y3)
xlabel('Time')
ylabel('y3')


subplot(2, 2, 4);
y4 = exp(-0.25 * a * t) .* sin(20 * pi * t);
plot(t, y4)
xlabel('Time')
ylabel('y4')
