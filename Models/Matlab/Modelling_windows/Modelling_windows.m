clc;clear
%% Joglekar and Wolf

x=0:0.001:1;
p=[1,2,3,5,10];
for i=1:length(p)
    y(i,:)=1-(((2.*x)-1).^(2.*p(i)));
end

figure(1);clf; subplot(1,2,1)
plot(x,y)
legend('$p=1$', '$p=2$', '$p=3$', '$p=5$', '$p=10$', 'location', 'best');
box on; grid on;
ylim([0,1.05])
ylabel('$f(x/D)$');
xlabel('$x/D$')
title('Joglekar and Wolf', 'fontWeight', 'normal')

% Biolek
p=2;
subplot(1,2,2); hold on
plot(x, 1-(((1.*x)-1).^(2.*p)))
plot(x, 1-(((1.*x)).^(2.*p)))

plot([0.2], 1-(((1.*[0.2]-1)).^(2.*p)), '>', 'MarkerSize', 4, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])
plot([0.8], 1-(((1.*[0.8]-1)).^(2.*p)), '<', 'MarkerSize', 4, 'color', [0 0.4470 0.7410], 'MarkerFaceColor', [0 0.4470 0.7410])

plot([0.2], 1-(((1.*[.2])).^(2.*p)), '>', 'MarkerSize', 4, 'color', [ 0.8500 0.3250 0.0980], 'MarkerFaceColor', [ 0.8500 0.3250 0.0980])
plot([0.8], 1-(((1.*[0.8])).^(2.*p)), '<', 'MarkerSize', 4, 'color', [ 0.8500 0.3250 0.0980], 'MarkerFaceColor', [ 0.8500 0.3250 0.0980])


plot([0.1,0.1], [1-(((1.*0.1)-1).^(2.*p)), 1-(((1.*0.1)).^(2.*p))], 'color', 'black')
plot([0.9,0.9], [1-(((1.*0.9)-1).^(2.*p)), 1-(((1.*0.9)).^(2.*p))], 'color', 'black')
plot([0.1, 0.1], [0.5, 0.9], '^', 'MarkerSize', 4, 'color', 'black', 'MarkerFaceColor', 'black')
plot([0.9, 0.9], [0.5, 0.9], '^', 'MarkerSize', 4, 'color', 'black', 'MarkerFaceColor', 'black' )

plot([0.25,0.25], [1-(((1.*0.25)-1).^(2.*p)), 1-(((1.*0.25)).^(2.*p))], 'color', 'black')
plot([0.75,0.75], [1-(((1.*0.75)-1).^(2.*p)), 1-(((1.*0.75)).^(2.*p))], 'color', 'black')
plot([0.25], [0.85], '^', 'MarkerSize', 4, 'color', 'black', 'MarkerFaceColor', 'black')
plot([0.75], [0.85], '^', 'MarkerSize', 4, 'color', 'black', 'MarkerFaceColor', 'black' )

hold off; box on; grid on;
ylim([0,1.05])
ylabel('$f(x/D)$');
xlabel('$x/D$')
title('Biolek with $p=2$', 'fontWeight', 'normal')
legend('$i(t)>0$', '$i(t)<0$')

%% Prodromakis
jay = [0.2, 0.6, 1.2, 1.6];
p = [2,4,8,15,40,80]

figure(2); subplot(1,2,1);

for i=1:length(jay)
    p1(i,:)=jay(i).*((1-(((x-0.5).^2)+0.75).^10));
end

plot(x, p1)
hold off; box on; grid on;
ylabel('$f(x/D)$');
xlabel('$x/D$')
title('Prodromakis, $p=10$', 'fontWeight', 'normal')
legend('$j=0.2$', '$j=0.4$', '$j=0.8$', '$j=1.2$', '$j=1.6$', 'orientation', 'horizontal', 'location', 'best');
ylim([0,1.8])


figure(2); subplot(1,2,2);

for i=1:length(p)
    p1(i,:)=1.*((1-(((x-0.5).^2)+0.75).^p(i)));
end

plot(x, p1)
hold off; box on; grid on;
ylabel('$f(x/D)$');
xlabel('$x/D$')
title('Prodromakis, $j=1$', 'fontWeight', 'normal')
legend('$p=2$', '$p=4$', '$p=8$', '$p=15$', '$p=40$', '$p=80$', 'location', 'best');
ylim([0,1.05])

