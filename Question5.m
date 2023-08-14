a = 1 + mod(231, 3);
num_samples = 5000;
f1 = 200 * a; % Frequency of the first sinusoid in Hz
f2 = 220 * a; % Frequency of the second sinusoid in Hz
fs = 44100; % Sampling frequency in Hz
T = 5; % Duration of the signal in seconds
t = (0:num_samples-1) / fs; % Time vector

% Generate the sinusoids
s1 = sin(2 * pi * a * f1 * t); % First sinusoid
s2 = sin(2 * pi * a * f2 * t); % Second sinusoid

% Append them
s = s1 + s2; % Final signal
n = 0:length(s) - 1;

% Write it into a .wav file
audiowrite('sound.wav', s, fs); % Save the file

% Plot the signal
plot(n, s);
xlabel('Sample Index');
ylabel('Amplitude');
title('Concatenated Sinusoidal Signal');
