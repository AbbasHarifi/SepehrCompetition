close all
clc
tfinal=1;
dt=0.01;
T=0:dt:tfinal;
Robot=CreateRobot(0,0,0,0.02,.1,dt,20);
Target=struct('x',0.8,'y',0.7);
Environment=struct('xmin',-1.5,'xmax',1.5,'ymin',-1.5,'ymax',1.5);
for t=T
    [wl,wr]=Controller(Robot,Target);
    Robot=UpdateRobot(Robot,wl,wr);
    ShowRobot(Robot)    
    ShowEnvironment(Environment,Target)
    writeAnimation(gcf,'loop.gif','LoopCount',1)
    pause(dt)
end




    
