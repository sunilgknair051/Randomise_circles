%RANdom%
x = rand(1, 1000);
y = rand(1, 1000);
minAllowableDistance = 0.05;
numberOfPoints = 500;
% Initialize first point.
P_X = x(1);
P_Y= y(1);
% Try dropping down more points.
counter = 2;
for k = 2 : numberOfPoints
	% Get a trial point.
	trialX = x(k);
	trialY = y(k);
	% See how far is is away from existing keeper points.
	distances = sqrt((trialX-P_X).^2 + (trialY - P_Y).^2);
	minDistance = min(distances);
	if minDistance >= minAllowableDistance
		P_X(counter) = trialX;
		P_Y(counter) = trialY;
		counter = counter + 1;
    %for loop will suffice---edit needed.
	end
end
plot(P_X, P_Y, 'b*');
grid on;