close all;

[signal,sampling]=audioread('exercise1_piece.wav');
N=2^nextpow2(length(signal)); %finds next power of 2
carrier_frequency=30000;    ; %given
sampling_rate=carrier_frequency*3;  %it only works with ?3?

newX=-sampling/2:sampling/N:sampling/2-sampling/N;
hold on;
subplot(3,1,1)
F=fftshift(abs(fft(signal,N)));
plot(newX,F);
title("Unmodulated signal spectrum");

subplot(3,1,2)
amplitude_modulated_signal=ammod(signal, carrier_frequency,sampling_rate);
F1=fftshift(abs(fft(amplitude_modulated_signal,N)));
plot(newX,F1);
title("AM spectrum");

subplot(3,1,3)
frequency_deviation = 10000;
frequency_modulated_signal=fmmod(signal, carrier_frequency,sampling_rate, frequency_deviation);
F2=fftshift(abs(fft(frequency_modulated_signal,N)));
plot(newX,F2);
title("FM spectrum");







