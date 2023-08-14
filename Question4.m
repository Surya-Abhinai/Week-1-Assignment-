% Import the speech signal
[s, Fs] = audioread('Experiment-1/speech.wav');

alpha = 1; 
F = 250 * alpha;

% Generate the modulated signal y(n)
n = 0:length(s) - 1;
yn = s .* cos(2 * pi * F / Fs * n');
% Plot the original signal s(n) and the modulated signal y(n)
t = (0:length(s) - 1) / Fs;
subplot(2, 1, 1);
plot(t, s);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Speech Signal');
grid on;

subplot(2, 1, 2);
plot(t, yn);
xlabel('Time (s)');
ylabel('Amplitude');
title(['Modulated Speech Signal (F = ' num2str(F) ' Hz)']);
grid on;

% Play the original and modulated signals
sound(s, Fs); % Play original signal
pause(length(s) / Fs); % Pause to listen to the original signal
sound(yn, Fs); % Play modulated signal

% Compute the Fourier transform of y(t) = s(t)cos(2πF0t)
Yf = fft(yn);
Sf = fft(s);

% Plot the spectrum of the signals
frequencies = linspace(0, Fs, length(Yf));
figure;
subplot(2, 1, 1);
plot(frequencies, abs(Sf));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Spectrum of Original Speech Signal');
grid on;

subplot(2, 1, 2);
plot(frequencies, abs(Yf));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title(['Spectrum of Modulated Speech Signal (F = ' num2str(F) ' Hz)']);
grid on;
