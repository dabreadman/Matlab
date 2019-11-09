close all;
x = -2*pi:0.1:2*pi  %from x = -2*pi , steps up 0.01 to x=2*pi
y1=cos	(x)	        
y2=0.5*sin(x);
stem (x,y2,'r');	       % stems 0.5*sin(x) in red
hold on;                   % retain 0.5*sin(x)
plot (x,y1,'k');           % plot cos(x) in black
hold off;
axis([-8 8 -1.0 1.0]);         % x range: -8 to 8
                               % y range: -1.0 to 1
