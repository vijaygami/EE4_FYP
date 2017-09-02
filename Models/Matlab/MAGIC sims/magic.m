clc;clear; load excell_results.mat
figure(1)
x=1:10;

figure(1);clf; 
subplot(1,2,1); hold on
X=[x(1:end),fliplr(x(1:end))];
Y=[NOR(1:end,2)',fliplr(NOR(1:end,1)')];
fill(X,Y, [0.65, 0.65, 0.65]);      
plot(x(1:end), NOR(1:end,2), 'color', [0,0,0], 'lineWidth', 1)
plot(x(1:end), NOR(1:end,1), 'color', [0,0,0], 'lineWidth', 1)
ylim([0,1]); xlim([1,10]); grid on; box on;
xlabel('Number of Inputs, N')
title('Normalised Admissible $v_0$ for a $N$-input $NOR$ Gate','fontWeight', 'normal' )
ylabel('Normalised $v_0$')
ylim([0,1.1])

subplot(1,2,2); hold on
X=[x(2:end),fliplr(x(2:end))];
Y=[OR(2:end,2)',fliplr(OR(2:end,1)')];
fill(X,Y, [0.65, 0.65, 0.65]);      
plot(x(2:end), OR(2:end,2), 'color', [0,0,0], 'lineWidth', 1)
plot(x(2:end), OR(2:end,1), 'color', [0,0,0], 'lineWidth', 1)
ylim([0,1]); xlim([1,10]); grid on; box on;
xlabel('Number of Inputs, N')
title('Normalised Admissible $v_0$ for a $N$-input $OR$ Gate','fontWeight', 'normal' )
ylabel('Normalised $v_0$')
ylim([0,1.1])
%%

figure(2);clf; 
subplot(1,2,1); hold on
X=[x(2:end),fliplr(x(2:end))];
Y=[NAND(2:end,2)',fliplr(NAND(2:end,1)')];
fill(X,Y, [0.65, 0.65, 0.65]);      
plot(x(2:end), NAND(2:end,2), 'color', [0,0,0], 'lineWidth', 1)
plot(x(2:end), NAND(2:end,1), 'color', [0,0,0], 'lineWidth', 1)
ylim([0,1]); xlim([1,10]); grid on; box on;
xlabel('Number of Inputs, N')
title('Normalised Admissible $v_0$ for a $N$-input $NAND$ Gate','fontWeight', 'normal' )
ylabel('Normalised $v_0$')
ylim([0,1.1])


subplot(1,2,2); hold on
X=[x(2:end),fliplr(x(2:end))];
Y=[AND(2:end,2)',fliplr(AND(2:end,1)')];
fill(X,Y, [0.65, 0.65, 0.65]);      
plot(x(2:end), AND(2:end,2), 'color', [0,0,0], 'lineWidth', 1)
plot(x(2:end), AND(2:end,1), 'color', [0,0,0], 'lineWidth', 1)
ylim([0,1]); xlim([1,10]); grid on; box on;
xlabel('Number of Inputs, N')
title('Normalised Admissible $v_0$ for a $N$-input $AND$ Gate','fontWeight', 'normal' )
ylabel('Normalised $v_0$')
ylim([0,1.1])
