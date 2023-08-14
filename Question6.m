frequencies = [261.63, 293.66, 329.63, 349.23, 392.00, 440.00, 493.88, 523.25];
sample_rate = 44100;
fs = 1 / sample_rate;
duration = 0.5;
sequence = [];

for freq = frequencies
    t = 0 : (1 / sample_rate) : duration;
    signal = sin(2 * pi * freq * t);
    sequence = [sequence, signal];
end

sequence = sequence / max(abs(sequence));
filename = 'do_re.wav';
audiowrite(filename, sequence, sample_rate);
sound(sequence, sample_rate);

% Plot the waveform
t_total = 0 : (1 / sample_rate) : (length(sequence) - 1) / sample_rate;
figure;
plot(t_total, sequence);
xlabel('Time (s)');
ylabel('Amplitude');
title('Waveform of Sequence');
