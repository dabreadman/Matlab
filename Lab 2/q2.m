close all;
    x= -1:0.01:1;
    y =sawtooth(2*pi*(x+0.25),0.5);
    count = 1;
    
    for z = [1, 2, 3, 5, 10, 50 ]
       disp(z);
       
        subplot(3,2,count);
        y1 = 0;
       
        for k = [0:z-1]   
        y1 = y1 + (8/pi^2) * ((-1)^k) * (sin(2*pi*(2*k+1)*x) / (2*k+1)^2);
        
        i=i+1;
        end
            
        plot(x,y,'r');
        hold on;
        plot(x,y1,'b');
        count=count+1;
        axis([-1,1,-1,1]);
        title("Approximation with "+z+" sine functions");
    end
     