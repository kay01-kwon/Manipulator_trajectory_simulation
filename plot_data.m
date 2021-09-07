
close all;

figure(1)
plot(position.Data(:,1),position.Data(:,2))
title('x-y Circle movement')
xlabel('x (mm)')
ylabel('y (mm)')
hold on;
plot(pd.Data(:,1)*1000,pd.Data(:,2)*1000);
legend('End effector trajectory','Planner trajectory')
axis([40 160 -10 60])
grid on;

figure(2)

v_t_eff = sqrt(velocity.Data(:,1).^2 + velocity.Data(:,2).^2);
v_t_des = sqrt(vd.Data(:,1).^2 + vd.Data(:,2).^2);

plot(velocity.Time,v_t_eff)
title('v_t-t Circle movement')
xlabel('t (s)')
ylabel('v_t (mm/s)')
hold on;
plot(vd.Time,v_t_des*1000);
legend('End effector velocity','Planner velocity profile')
grid on;