nCircles = 20;
circles = zeros(nCircles,2);
r = 0.5;
c = 0;

for i=1:nCircles
    %Flag which holds true whenever a new circle was found
    newCircleFound = false;

    %loop iteration which runs until finding a circle which doesn't intersect with previous ones
    while ~newCircleFound & c<=nCircles
        x = 0 + (5+5)*rand(1);
        y = 0 + (5+5)*rand(1);

        %calculates distances from previous drawn circles
        prevCirclesY = circles(1:i-1,1);
        prevCirclesX = circles(1:i-1,2);
        distFromPrevCircles = sqrt((prevCirclesX-x).^2+(prevCirclesY-y).^2);

        %if the distance is not to small - adds the new circle to the list
        if i==1 || sum(distFromPrevCircles<=2*r)==0
            newCircleFound = true;
            circles(i,:) = [y x];
            circles(x,y,r);
        end

    end
    hold on
end