function Robot=UpdateRobot(Robot,wl,wr)
Robot.x=Robot.x+Robot.dt*(wr+wl)*Robot.r*cos(Robot.theta)/2;
Robot.y=Robot.y+Robot.dt*(wr+wl)*Robot.r*sin(Robot.theta)/2;
Robot.theta=mod(Robot.theta+Robot.dt*Robot.r*(wr-wl)/Robot.b,2*pi);
if Robot.theta>pi
    Robot.theta=Robot.theta-2*pi;
end
Robot.hx(end+1)=Robot.x;
Robot.hy(end+1)=Robot.y;
Robot.htheta(end+1)=Robot.theta;
if length(Robot.hx)>Robot.hlength
    Robot.hx(1)=[];
    Robot.hy(1)=[];
    Robot.htheta(1)=[];
end    
