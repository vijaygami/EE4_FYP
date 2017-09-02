clc;clear;
load iv_static.mat;
load iv_switch.mat;

%% plotting static IV relationships
N=78;
figure(1); clf    
subplot(2,1,1); hold on
plot(vs(7,:), is(7,:)*1000)
plot(vs(4,:), is(4,:)*1000)
plot(vs(8,:), is(8,:)*1000)
plot(vs(2,:), is(2,:)*1000)
plot(vs(6,:), is(6,:)*1000)
plot(vs(1,:), is(1,:)*1000)
hold off; grid on; box on; xlim([-1.1, 1.1])

title('Static IV Charachteristic Showing no Switching', 'fontWeight', 'normal')
xlabel('Voltage [V]')
ylabel('Current [mA]')
legend( 'Run 1', 'Run 2', 'Run 3','Run 4', 'Run 5', 'Run 6', 'Run 7','Run 8', 'location', 'best')



subplot(2,1,2)
stem([1:N]*50e-3, vs(1,:))
ylabel('Voltage [V]');
xlabel('Time [Seconds]');
title('Sequence of Measuring Pulses', 'fontWeight', 'normal')
legend('Measureing Pulse (20ms Duration)')
ylim([-1.1, 1.1])
box on; grid on 

%%
figure(4); clf;


for i=1:8
    mem(i,:) = polyfit(vs(i,:), is(i,:), 1);    
    p(i,:) = polyfitcoef(vs(i,:), is(i,:), [5,3,1]);
end
mem=mem(:,1);

p2=mean(p);

%scaling=[1.05; 0.95; 0.95; 0.98; 0.99; 1.0; 0.98; 1.0];
scaling=[1.4; 1.1; 0.95; 0.82; 0.7; 1.3; 0.75; 1.05];

for i=1:8
    subplot(2,4,i); hold on
    plot(vs(i,:), is(i,:).*1000)
    plot(vs(i,:), polyval(p2.*scaling(i),vs(i,:)).*1000)
    
    err = mean((abs((is(i,:)-polyval((p2.*scaling(i)),vs(i,:)))))).*1000000;

    
    
    
    text(-1,0.03, ['Mean Error = ', num2str(err), '$\mu$A'])
    legend('IV Run', 'Polynomial Fit', 'location', 'best')
    hold off
    title(['Static IV Characteristic, Run ', num2str(i)], 'fontWeight', 'normal')
    xlabel('Voltage [V]')
    ylabel('Current [mA]')
    ylim([-0.04, 0.04]); xlim([-1.1, 1.1])
    box on; grid on
    
    
end


%%
% N=length(isw);
% 
% vd=diff(vsw);
% cd=diff(isw);
% 
% b=300;
% e=459;
% 
% figure(5);clf
% subplot(1,1,1)
% plot(vsw(b:e), isw(b:e))
% grid on
% 
%  polyfitc(vsw(b:e), isw(b:e), [3, 1])
% 
% % subplot(2,1,2)
% % plot([b:e],vsw(b:e)./isw(b:e))
% % grid on
% 
% 
% %% polynomial aprox of whole hysterisis loop of switching data
% 
% 
% p=polyfitc(vsw, isw, [5,4,3,2,1])
% figure(2); clf;
% hold on
% plot(vsw, isw)
% plot(vsw, polyval(p,vsw))
% hold off
% 
% %%  polynomial aprox of 2 halves of hysterisis loop of switching data
% b=104;
% e=183;
% b1=183;
% e1=263;
% 
% figure(3); clf;
% hold on
% plot(vsw(b:e), isw(b:e))
% plot(vsw(b1:e1), isw(b1:e1))
% hold off
% 
% p=polyfitc(vsw(b:e), isw(b:e), [5,4,3,2,1])
% p=polyfitc(vsw(b1:e1), isw(b1:e1), [5,4,3,2,1])
% 

