clear all;
[notes, fsampling]=audioread('exercise notes.wav')
N=16384
y1 = notes(1:6797);  %copy [starting:ending]
y2 = notes(6798:10001);
newX= [-fsampling/2:fsampling/N:fsampling/2-fsampling/N]; 

hold on;
subplot(2,1,1)
F1=fftshift(abs(fft(y1,N)))
plot(newX,F1)

subplot(2,1,2)
F2=fftshift(abs(fft(y2,N)))
plot(newX,F2)
