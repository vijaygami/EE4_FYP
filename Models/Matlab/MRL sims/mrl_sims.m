clc;clear; load excel_results.mat

figure1=figure(1);clf; 
subplot1 = subplot(2,1,1,'Parent',figure1);hold on;
plot(AND_gate(:,1), AND_gate(:,4), 'lineWidth', 1)
plot([0,0], [0,7], '--', 'color', 'red')
plot([50,50], [0,7], '--', 'color', 'red')
plot([100,100], [0,7], '--', 'color', 'red')
plot([150,150], [0,7], '--', 'color', 'red')
text(1,6.5,'$V_{in1}=0v$')
text(1,5.5,'$V_{in2}=0v$')
text(51,6.5,'$V_{in1}=0v$')
text(51,5.5,'$V_{in2}=5v$')
text(101,6.5,'$V_{in1}=5v$')
text(101,5.5,'$V_{in2}=0v$')
text(151,6.5,'$V_{in1}=5v$')
text(151,5.5,'$V_{in2}=5v$')
hold off
box on; grid on;
xlabel('Time [Seconds]')
ylabel('Voltage [V]')
title('Output Voltage for a 2-Input $AND$ Gate','fontWeight', 'normal')
legend('$V_{out}$')
xlim([-1, 200]); ylim([0,7])
set(subplot1,'XTick',[0:25:200],'XTickLabel', [0:25:200]);

subplot2 = subplot(2,1,2,'Parent',figure1);hold on;
plot(AND_gate(:,1), AND_gate(:,3)./1000, 'lineWidth', 1)
plot(AND_gate(:,1), AND_gate(:,2)./1000, 'lineWidth', 1)
plot([0,0], [0,15], '--', 'color', 'red')
plot([50,50], [0,15], '--', 'color', 'red')
plot([100,100], [0,15], '--', 'color', 'red')
plot([150,150], [0,15], '--', 'color', 'red')
text(1,12.8,'$V_{in1}=0v$')
text(1,11,'$V_{in2}=0v$')
text(51,12.8,'$V_{in1}=0v$')
text(51,11,'$V_{in2}=5v$')
text(101,12.8,'$V_{in1}=5v$')
text(101,11,'$V_{in2}=0v$')
text(151,12.8,'$V_{in1}=5v$')
text(151,11,'$V_{in2}=5v$')
box on; grid on;
xlabel('Time [Seconds]')
ylabel('Resistance [K$\Omega$]')
title('Memristor Instantaneous Resistance for a 2-Input $AND$ Gate','fontWeight', 'normal')
xlim([-1, 200]); ylim([0,14])
legend('$R_1$','$R_2$')
set(subplot2,'XTick',[0:25:200],'XTickLabel', [0:25:200]);

%%

figure1=figure(2);clf; 
subplot1 = subplot(2,1,1,'Parent',figure1);hold on;
plot(OR_gate(:,1), OR_gate(:,4), 'lineWidth', 1)
plot([0,0], [0,7], '--', 'color', 'red')
plot([50,50], [0,7], '--', 'color', 'red')
plot([100,100], [0,7], '--', 'color', 'red')
plot([150,150], [0,7], '--', 'color', 'red')
text(1,6.5,'$V_{in1}=0v$')
text(1,5.5,'$V_{in2}=0v$')
text(51,6.5,'$V_{in1}=0v$')
text(51,5.5,'$V_{in2}=5v$')
text(101,6.5,'$V_{in1}=5v$')
text(101,5.5,'$V_{in2}=0v$')
text(151,6.5,'$V_{in1}=5v$')
text(151,5.5,'$V_{in2}=5v$')
hold off
box on; grid on;
xlabel('Time [Seconds]')
ylabel('Voltage [V]')
title('Output Voltage for a 2-Input $OR$ Gate','fontWeight', 'normal')
legend('$V_{out}$')
xlim([-1, 200]); ylim([0,7])
set(subplot1,'XTick',[0:25:200],'XTickLabel', [0:25:200]);

subplot2 = subplot(2,1,2,'Parent',figure1);hold on;
plot(OR_gate(:,1), OR_gate(:,3)./1000, 'lineWidth', 1)
plot(OR_gate(:,1), OR_gate(:,2)./1000, 'lineWidth', 1)
plot([0,0], [0,15], '--', 'color', 'red')
plot([50,50], [0,15], '--', 'color', 'red')
plot([100,100], [0,15], '--', 'color', 'red')
plot([150,150], [0,15], '--', 'color', 'red')
text(1,12.8,'$V_{in1}=0v$')
text(1,11,'$V_{in2}=0v$')
text(51,12.8,'$V_{in1}=0v$')
text(51,11,'$V_{in2}=5v$')
text(101,12.8,'$V_{in1}=5v$')
text(101,11,'$V_{in2}=0v$')
text(151,12.8,'$V_{in1}=5v$')
text(151,11,'$V_{in2}=5v$')
box on; grid on;
xlabel('Time [Seconds]')
ylabel('Resistance [K$\Omega$]')
title('Memristor Instantaneous Resistance for a 2-Input $OR$ Gate','fontWeight', 'normal')
xlim([-1, 200]); ylim([0,14])
legend('$R_1$','$R_2$')
set(subplot2,'XTick',[0:25:200],'XTickLabel', [0:25:200]);

