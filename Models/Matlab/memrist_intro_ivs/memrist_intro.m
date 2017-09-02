%%
clc;clear; load ideal_ivs.mat

figure1=figure(1); clf;

subplot1 = subplot(1,2,1,'Parent',figure1); hold on
plot([0:0.0001:2], [0:0.0001:2].^2)
box on; grid on
title('Ideal Flux-Charge Curve Example, $\varphi(q)=q^2$', 'fontWeight', 'normal')
xlabel('Charge')
ylabel('Flux')
set(subplot1,'XTick',[0 0.25 0.5 0.75 1 1.25 1.5 1.75 2],'XTickLabel',...
    {'0','','','','','','','',''},'YTickLabel',{'0','','','','','','','',''});


subplot2 = subplot(1,2,2,'Parent',figure1); hold on
plot(hz1(:,2), hz1(:,1))    % 0.05hz
plot(hz2(:,2), hz2(:,1))    % 0.1hz
plot(hz3([1:1000],2), hz3([1:1000],1))    % 0.5hz
plot(hz5([1:100],2), hz5([1:100],1))    % 5 Hz
title('Ideal Memristor IV Curves', 'fontWeight', 'normal')
legend('$f_0$', '$f_1=2f_0$', '$f_2=10f_0$', '$f_4=100f_0$', 'location', 'best')
xlabel('Voltage')
ylabel('Current')
grid on; box on

set(subplot2,'XTick',[-2 -1.5 -1 -0.5 0 0.5 1 1.5 2],'XTickLabel',...
    {'','','','','0','','','',''},'YTick',...
    [-1e-05 -7.5e-06 -5e-06 -2.5e-06 1.6940658945086e-21 2.5e-06 5e-06 7.5e-06 1e-05],...
    'YTickLabel',{'','','','','0','','','',''});
%%
clc;clear; load non_ideal.mat

x=[0:0.0001:1.545];
y=x.^3;
y1=exp(x)-1;

figure1=figure(2); clf;
subplot1 = subplot(1,2,1,'Parent',figure1); hold on
plot(x,y1)
plot(x,y)
box on; grid on; hold off
title('Non-Ideal Flux-Charge Curve, (Non-Single Valued)', 'fontWeight', 'normal')
xlabel('Charge')
ylabel('Flux')
set(subplot1,'XTick',[0 0.25 0.5 0.75 1 1.25 1.5 1.75 2],'XTickLabel',...
    {'0','','','','','','','',''},'YTickLabel',{'0','','','','','','','',''});
legend('$i(t)>0$, $\varphi(q)=q^3$', '$i(t)<0$, $\varphi(q)=e^q-1$', 'location', 'best')


subplot2 = subplot(1,2,2,'Parent',figure1); hold on
plot(non_ideal([1e5:end],2), non_ideal([1e5:end],1))
plot(non_ideal([1:1e5],2), non_ideal([1:1e5],1))
hold off
xlabel('Voltage')
ylabel('Current')
box on; grid on
title('Non-Ideal Memristor IV Curve', 'fontWeight', 'normal')
set(subplot2,'XTickLabel',{'','','','0','','',''},'YTickLabel',...
    {'','','','','0','','','',''});

%%