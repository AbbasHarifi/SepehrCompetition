close all
clc
Robot=CreatRobot(0,0,0,0.02,.1);
ShowRobot(Robot)
figure
xf=-.40;
yf=-.30;
thetaf=pi/6;

tfinal=20;
dt=0.01;
T=0:dt:tfinal;

X=[x];
Y=[y];
Theta=[theta];

kp1=250;
kp2=50;

for t=T
    if mod(t,1)==0
        x0=x;
        y0=y;
        theta0=theta;
        xf=rand-.5;
        yf=rand-.5;
        X=[x];
        Y=[y];
        Theta=[theta];
    end
    d=sqrt((x-xf)^2+(y-yf)^2);
    alpha=atan2(yf-y,xf-x);
    error=alpha-theta;
    wr=kp1*d*exp(-error^2)+kp2*error;
    wl=kp1*d*exp(-error^2)-kp2*error;

    x=x+dt*(wr+wl)*r*cos(theta)/2;
    y=y+dt*(wr+wl)*r*sin(theta)/2;
    theta=mod(theta+dt*r*(wr-wl)/b,2*pi);
    if theta>pi
        theta=theta-2*pi;
    end
    X(end+1)=x;
    Y(end+1)=y;
    Theta(end+1)=theta;
    plot(X,Y,xf,yf,'ro','LineWidth',2)
    ShowRobot(Robot)    
    axis equal
    axis([-.50 .50 -.50 .50])
    pause(dt)
end

function Robot=CreatRobot(x,y,theta,r,b)
Robot=struct('x',x,'y',y,'theta',theta,'r',r,'b',b);
end

function ShowRobot(Robot)
t=0:.1:2*pi;
x=Robot.x+Robot.r*cos(t);
y=Robot.y+Robot.r*sin(t);
fill(x,y,'red')
end
    
