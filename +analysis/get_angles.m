function angles = get_angles(x,y)
% this function gets the angles between subsquent points in a spline fit
% to the center line of a worm
    n = length(x);
    angles = zeros(n-1,1);      
    for i = 1:n-1
        angles(i) = atan((y(i+1)-y(i))/(x(i+1)-x(i)));
    end
    
    angles = angles - sum(angles)/n;
end