close all;
x = -2*pi:0.01:2*pi;             %from x=-2*pi to x=2*pi with step of 0.01
r = randn(1,size(x,2))*0.2;      %generate an array of randn numbers with the size of (1 X x.column)*0.2 to conrol the impact
y = sin(x)+r;                    %add noised to y=sin(x)
plot (x,y,'b');                  %plot sin(x) and noise in blue
axis([-8 8 -1.5 1.5]);	         % x range: -8 to 8
                                 % y range: -1.0 to 1

