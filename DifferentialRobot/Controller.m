function [wl,wr]=Controller(Robot,Target)
kp1=250;
kp2=50;
d=sqrt((Robot.x-Target.x)^2+(Robot.y-Target.y)^2);
alpha=atan2(Target.y-Robot.y,Target.x-Robot.x);
error=alpha-Robot.theta;
wl=kp1*d*exp(-error^2)-kp2*error;
wr=kp1*d*exp(-error^2)+kp2*error;
end