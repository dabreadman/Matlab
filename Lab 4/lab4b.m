close all;

[signal,sampling]=audioread('exercise2_piece.wav');
N=2^nextpow2(length(signal)); %finds next power of 2
carrier_frequency=30000;    ; %given
sampling_rate=carrier_frequency*3;  %it only works with ?3?
sound(signal,sampling)


hold on;
% initial signal frequency spectrum
% subplot(3,1,1)
% newX=-sampling/2:sampling/N:sampling/2-sampling/N;
% F=fftshift(abs(fft(signal,N)));
% plot(newX,F);

% AM modulated frequency spectrum
subplot(3,1,1)
amplitude_modulated_signal=ammod(signal, carrier_frequency,sampling_rate);  % AM modulate signal
F1=fftshift(abs(fft(amplitude_modulated_signal,N)));                        % fft the AM modulated signal
plot(newX,F1);
title("AM spectrum");

% AM modulated frequency spectrum with noise
% subplot(3,1,3)
% r = randn(size(amplitude_modulated_signal,1),1)*0.1;                  % generate noise
% amplitude_modulated_signal_with_noise = amplitude_modulated_signal+r; % adds noise to the AM modulated signal
% F2=fftshift(abs(fft(amplitude_modulated_signal_with_noise,N)));       % fft the AM modulated signal with nose
% plot(newX,F2);
% title("AM spectrum with noise");
% %amdemod(amplitude_modulated_signal_with_noise,carrier_frequency,sampling_rate)
% %sound(amplitude_modulated_signal_with_noise,sampling_rate)

% FM modulated with freq-dev=20kHz frequency spectrum
subplot(3,1,2)
frequency_deviation = 20000;
frequency_modulated_signal=fmmod(signal, carrier_frequency,sampling_rate, frequency_deviation);
F2=fftshift(abs(fft(frequency_modulated_signal,N)));
plot(newX,F2);
title("FM spectrum freq-dev=20kHz");

% FM modulated with freq-dev=50kHz frequency spectrum
subplot(3,1,3)
frequency_deviation = 50000;
frequency_modulated_signal=fmmod(signal, carrier_frequency,sampling_rate, frequency_deviation);
%r = randn(size(frequency_modulated_signal,1),1)*0.1;   
%frequency_modulated_signal_with_noise = frequency_modulated_signal+r;
F3=fftshift(abs(fft(frequency_modulated_signal,N)));
plot(newX,F3);
title("FM spectrum freq-dev=50kHz");



