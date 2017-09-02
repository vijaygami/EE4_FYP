x=[-2: 0.01: 2]*2;

y=sinh(x);
yy=sinh(x.*2)

figure(1); clf;
hold on;
%plot(x, y*0.5, 'lineWidth', 2)
plot(x, polyval([0, 0.015, 0.646, 0, 1, 0].*0.31,x))
hold off

legend('sinh','pol')