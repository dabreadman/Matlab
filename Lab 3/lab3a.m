close all;
frequency=10;
fs=frequency*3;
time=(1/frequency)*20;
x=[0:1/fs:time-1/fs]; 
y= sin(2*pi*frequency*x); %sin(2*pi*f*x*t)



hold on;
for i=[1:3]
    subplot(3,1,i)
    N=64*i;
    F=fftshift(abs(fft(y,N))); %shift->fft(time domain->points)
    newX= [-fs/2:fs/N:fs/2-fs/N]; 
    plot(newX,F);
end

