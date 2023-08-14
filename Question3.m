% question 3-1
ECG_Data = importdata("Experiment-1/Experiment-1/ECG_Data.txt");
figure
plot(ECG_Data);
xlabel('Samples');
ylabel('Data')
title('ECG data')
grid on


% question 3-2
RainFall_Jan = importdata('Experiment-1/Experiment-1/RainFallIndia_Jan.txt');
RainFall_July = importdata('Experiment-1/Experiment-1/RainFallIndia_July.txt');

subplot(2,1,1);
histogram(RainFall_Jan);
title('Rainfall: Jan')
grid on

subplot(2,1,2);
histogram(RainFall_July);
title('Rainfall: July')
grid on

disp('Mean rainfall - Jan');
mean(RainFall_Jan)
disp('Mean rainfall - July');
mean(RainFall_July)

disp('standard deviation - Jan');
std(RainFall_Jan)
disp('standard deviation - July');
std(RainFall_July)


% question 3-3
audio_data=importdata("Experiment-1/Experiment-1/Track001.wav");
[y,Fs]=audioread('Experiment-1/Experiment-1/Track001.wav'); 
%reads data from the file named filename, and returns sampled data, y, and a sample rate for that data, Fs.
sound(y,Fs);
