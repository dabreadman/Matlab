close all;
    x= -1:0.01:1;
    y =square(2 * pi * x);
    count = 1;
    array=0;
    index=1;
    for z = [1, 3, 5, 10, 50, 500]
        i = 1;
        subplot(3,2,count);
        y1 = 0;
       
        for k =[1:2:z*2] 
            y1=4/pi/k;
       
            array(i)=y1;
        
        i=i+1;
        
        end
        j = 1:z;
        count = count+1;
        stem(j, array);
        title("Approximation with " +z+ " sine functions");
    end
     