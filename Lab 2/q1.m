close all;
    x= -1:0.01:1;
    y =square(2 * pi * x);
    count = 1;
    
    for z = [1, 3, 5, 10, 50, 500]
       disp(z);
       
        subplot(3,2,count);
        y1 = 0;
       
        for k =[1:2:z*2]   
        y1 = y1 + (4/pi * (sin(2*pi*k*x))/k);
        
        i=i+1;
        end
            
        plot(x,y,'b');
        hold on;
        plot(x,y1,'k');
        count=count+1;
        axis([-1,1,-2,2]);
        title("Approximation with " +z+ " sine functions");
    end
     