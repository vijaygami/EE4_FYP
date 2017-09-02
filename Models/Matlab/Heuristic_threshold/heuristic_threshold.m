clc; clear;
load 'heuristic_threshold.mat'

figure1=figure(1); clf
subplot1 = subplot(2,2,1,'Parent',figure1); hold on;
plot(cur_cur_v, cur_cur_i);
title('Current Threshold, Current Driven')
plot([0, 0.25], [0.48, 0.48], '--', 'color', 'red'); plot([-0.03, 0.03], [0.48, 0.48], 'color', 'black')
plot([0, -0.7], [-0.48, -0.48], '--', 'color', 'red'); plot([-0.03, 0.03], [-0.48, -0.48], 'color', 'black')
text(1,1, '$R_{off}$', 'fontSize', 12)
text(-0.5,-1, '$R_{on}$', 'fontSize', 12)
text(-0.3,0.5, '$i_{off}$', 'fontSize', 12)
text(0.05,-0.49, '$i_{on}$', 'fontSize', 12)
plot([0.5], [0.5], '>', 'MarkerSize', 5, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
plot([-0.5], [-0.5], '>', 'MarkerSize', 5, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
xlim([-1, 1.5])
ylim([-1.4,1.1])
set(subplot1,'XTick',[-1:0.5:1.5],'XTickLabel',{'','','0','','',''},'YTick',[-1:0.5:1], 'YTickLabel',{'','','0','','',''});
hold off;

subplot1 = subplot(2,2,2,'Parent',figure1); hold on;
plot(vol_cur_v, vol_cur_i);
title('Current Threshold, Voltage Driven')
plot([0, 0.23], [0.368, 0.368], '--', 'color', 'red'); plot([-0.03, 0.03], [0.368, 0.368], 'color', 'black')
plot([0, -0.65], [-0.367, -0.367], '--', 'color', 'red'); plot([-0.03, 0.03], [-0.367, -0.367], 'color', 'black')
text(1,0.7, '$R_{off}$', 'fontSize', 12)
text(-.8,-1.3,'$R_{on}$', 'fontSize', 12)
text(-0.3,0.4, '$i_{off}$', 'fontSize', 12)
text(0.05,-0.38, '$i_{on}$', 'fontSize', 12)
plot([0.4204], [0.368], '>', 'MarkerSize', 5, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
plot([-0.646], [-0.6268], 'v', 'MarkerSize', 5, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
xlim([-1.3, 1.2])
ylim([-1.7,0.8])
set(subplot1,'XTick',[-1:0.5:1],'XTickLabel',{'','','0','','',''},'YTick',[-1.5:0.5:0.5], 'YTickLabel',{'','','','0','',''});
hold off;


subplot1 = subplot(2,2,3,'Parent',figure1); hold on;
plot(cur_vol_v, cur_vol_i);
title('Voltage Threshold, Current Driven')
plot([-0.385, -0.385], [0, -0.25], '--', 'color', 'red'); plot([-0.385, -0.385],[-0.03, 0.03], 'color', 'black')
plot([0.39, 0.39], [0, 0.68], '--', 'color', 'red');plot([0.39, 0.39],[-0.03, 0.03], 'color', 'black')
text(1.08,1.12, '$R_{off}$', 'fontSize', 12)
text(-.78,-.8, '$R_{on}$', 'fontSize', 12)
text(0.29,-0.13, '$v_{off}$', 'fontSize', 12)
text(-0.47,0.13, '$v_{on}$', 'fontSize', 12)
plot([0.65], [0.677], '>', 'MarkerSize', 5, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
plot([-0.389], [-0.493], 'v', 'MarkerSize', 5, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
xlim([-.8, 1.7])
ylim([-1.3,1.2])
set(subplot1,'XTick',[-0.5:0.5:1.5],'XTickLabel',{'','0','','','',''},'YTick',[-1:0.5:1], 'YTickLabel',{'','','0','','',''});
hold off;



subplot1 = subplot(2,2,4,'Parent',figure1); hold on;
plot(vol_vol_v, vol_vol_i);
title('Voltage Threshold, Voltage Driven')

plot([-0.525, -0.525], [0, -0.27], '--', 'color', 'red'); plot([-0.525, -0.525],[-0.03, 0.03], 'color', 'black')
plot([0.51, 0.51], [0, 0.72], '--', 'color', 'red'); plot([0.51, 0.51],[-0.03, 0.03], 'color', 'black')

text(1,0.75, '$R_{off}$', 'fontSize', 12)
text(-1.09,-1.07, '$R_{on}$', 'fontSize', 12)

text(0.41,-0.13, '$v_{off}$', 'fontSize', 12)
text(-0.63,0.13, '$v_{on}$', 'fontSize', 12)

plot([0.525], [0.51], 'v', 'MarkerSize', 5, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
plot([-0.52], [-0.52], 'v', 'MarkerSize', 5, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
xlim([-1.2, 1.3])
ylim([-1.5,1])
set(subplot1,'XTick',[-1:0.5:1],'XTickLabel',{'','','0','','',''},'YTick',[-1.5:0.5:1], 'YTickLabel',{'','','','0','',''});
hold off;



for i=1:4;
    subplot(2,2,i); hold on 
    xlabel('Voltage [V]')
    ylabel('Current [mA]')
    plot([-2,2], [0,0], 'color', 'black')
    plot([0,0], [-2,2], 'color', 'black')
    plot([1.35], [0], '>', 'MarkerSize', 5, 'color', 'black', 'MarkerFaceColor', 'black')
    plot([0],[1.35], '^', 'MarkerSize', 5, 'color', 'black', 'MarkerFaceColor', 'black')

    xlim([-1.4, 1.4])
    ylim([-1.4, 1.4])
    grid on; 
    box on;
    hold off
end


%%  
figure1=figure(2); clf; 
subplot1 = subplot(1,1,1,'Parent',figure1); hold on;
plot(vol_vol_v, vol_vol_i);
title('Memristor IV Curve (Voltage Threshold, Voltage Driven)')
plot([-0.52, -0.52], [-0.01, -0.3], '--', 'color', 'red')
plot([0.515, 0.515], [-0.01, 0.72], '--', 'color', 'red')

text(1,0.75, '$R_{off}$', 'fontSize', 12)
text(-0.99,-1.07, '$R_{on}$', 'fontSize', 12)

text(0.44,-0.15, '$v_{off}$', 'fontSize', 12)
text(-0.57,0.15, '$v_{on}$', 'fontSize', 12)

plot([0.525], [0.51], 'v', 'MarkerSize', 5, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
plot([-0.52], [-0.52], 'v', 'MarkerSize', 5, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
xlim([-1.2, 1.3])
ylim([-1.5,1])
set(subplot1,'XTick',[-1:0.5:1],'XTickLabel',{'','','0','','',''},'YTick',[-1.5:0.5:1], 'YTickLabel',{'','','','0','',''});


plot([-0.75, -0.75], [-0.04, 0.04], 'color', 'black')
plot([-0.29, -0.29], [-0.04, 0.04], 'color', 'black')
plot([0.745, 0.745], [-0.04, 0.04], 'color', 'black')
plot([-0.52, -0.52], [-0.04, 0.04], 'color', 'black')
plot([0.515, 0.515], [-0.04, 0.04], 'color', 'black')


text(-0.82,0.15, '$v_{set}$', 'fontSize', 12)
text(-0.35,0.15, '$v_{cond}$', 'fontSize', 12)
text(0.73,-0.15, '$v_{clear}$', 'fontSize', 12)


xlabel('Voltage [V]')
ylabel('Current [mA]')
plot([-2,2], [0,0], 'color', 'black')
plot([0,0], [-2,2], 'color', 'black')
plot([1.35], [0], '>', 'MarkerSize', 5, 'color', 'black', 'MarkerFaceColor', 'black')
plot([0],[1.35], '^', 'MarkerSize', 5, 'color', 'black', 'MarkerFaceColor', 'black')

xlim([-1.4, 1.4])
ylim([-1.4, 1.4])
grid on; 
box on;
hold off


%% 
load 'ndr.mat'

figure1=figure(3); clf; 
subplot1 = subplot(1,1,1,'Parent',figure1); hold on;
plot(v_ndr, i_ndr);
title('Memristor IV Curve showing NDR. (Current Threshold, Current Driven)')

set(subplot1,'XTick',[[-4:2:0], [2:2:6]],'XTickLabel',{'','','0','','',''},'YTick',[[-3e-4:1e-4:0],[1e-4: 1e-4: 2.5e-4]], 'YTickLabel',{'','','','0','',''});

plot([5.4], [0], '>', 'MarkerSize', 5, 'color', 'black', 'MarkerFaceColor', 'black')
plot([0],[2e-4], '^', 'MarkerSize', 5, 'color', 'black', 'MarkerFaceColor', 'black')


xlabel('Voltage [V]')
ylabel('Current [mA]')
plot([-5,7], [0,0], 'color', 'black')
plot([0,0], [-5,5], 'color', 'black')


xlim([-3, 5.5])
ylim([-2.1e-4, 2.1e-4])
grid on; 
box on;
hold off
