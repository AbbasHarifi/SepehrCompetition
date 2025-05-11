function Robot=CreateRobot(x,y,theta,r,b,dt,hlength)
% x,y = Robot position
% theta = Robot orientation
% r = Radius of the wheels
% b = Distance between two wheels
% hx,hy = Robot position history
% htheta = Robot orientation history
% hlength = Length of history
Robot=struct('x',x,'y',y,'theta',theta,'hx',[x],'hy',[y],'htheta',[theta], ...
    'r',r,'b',b,'dt',dt,'hlength',hlength);
end