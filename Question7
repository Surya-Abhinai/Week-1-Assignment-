% Load ConvFile1 data
convData = load("Experiment-1/Experiment-1/ConvFile1.txt");

% Read Track001.wav audio
[y, Fs] = audioread('Experiment-1/Experiment-1/Track001.wav');

% Convolve ConvFile1 data with Track001 audio
C = conv(convData, y);
filename = 'exp1_4.wav';
audiowrite(filename, C, Fs);

% Read convolved audio
[y4, Fs] = audioread('exp1_4.wav');

% Plot FFT Spectrum of convolved audio
t = linspace(0, length(y4)/Fs, length(y4));
Nfft = 2^nextpow2(length(y4)); % Use a power of 2 for FFT size
f = linspace(0, Fs, Nfft);
X1 = abs(fft(y4, Nfft));
figure(1);
plot(f(1:Nfft/2), X1(1:Nfft/2));
xlabel('Frequency (Hz)'); 
ylabel ('Amplitude');
title ('FFT Spectrum of convolved audio');

% Plot FFT Spectrum of Track001 audio
[y, Fs] = audioread('Experiment-1/Experiment-1/Track001.wav');
t = linspace(0, length(y)/Fs, length(y));
Nfft = 2^nextpow2(length(y)); % Use a power of 2 for FFT size
f = linspace(0, Fs, Nfft);
X1 = abs(fft(y, Nfft));
figure(2);
plot(f(1:Nfft/2), X1(1:Nfft/2));
xlabel('Frequency (Hz)'); 
ylabel ('Amplitude');
title ('FFT Spectrum of Track001 audio');

% Play convolved audio
sound(y4, Fs);

% Generate time vector for sequence
sample_rate = 44100;
t_total = 0 : (1 / sample_rate) : (length(convData) - 1) / sample_rate;

% Plot waveform of sequence
figure;
plot(t_total, convData);
xlabel('Time (s)');
ylabel('Amplitude');
title('Waveform of Sequence');

