function ShowRobot(Robot)
t=linspace(0,2*pi,20);
x=Robot.x+Robot.b*cos(t);
y=Robot.y+Robot.b*sin(t);
plot(Robot.hx,Robot.hy,'LineWidth',2)
hold on
fill(x,y,'red')
t=[0,160,200]*pi/180;
x=Robot.x+Robot.b*cos(t+Robot.theta);
y=Robot.y+Robot.b*sin(t+Robot.theta);
fill(x,y,'black')
hold off
end