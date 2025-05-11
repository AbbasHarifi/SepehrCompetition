function ShowEnvironment(Env,Target)
hold on
plot(Target.x,Target.y,'go','LineWidth',2)
hold off
axis equal
axis([Env.xmin Env.xmax Env.ymin Env.ymax])
end