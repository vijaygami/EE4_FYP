clc;clear;clf


% exploring window paramteters for TEAM , VTEAM model

x=[0:1e-3:3];   % state variable

% this is simmons parameter from team papaer.
a_off=0.95;
a_on=0.05;
wc=25e-3;      %  guy staatat uses 107e-11?

won=expl(-expl(-(x-a_on)/wc));
subplot(1,2,1); plot(x,won); title('window on')
xlim([0,1])

woff=expl(-expl((x-a_off)/wc));
subplot(1,2,2); plot(x,woff); title('window off')
xlim([0,1])

%% check amplitude of dx/dt. (or current in pspice model)
% TEAM model
% 
% current=[0:1e-7:1e-5];    % current input vector.
% 
% ioff = 20e-7;
% ion = -20e-7;
% 
% kon = 0.1;
% koff = -0.1;
% alpha_off = 3;
% alpha_on = 3;
% 
% 
% dx=[];
% for j = 1:length(current)
% 
%     if (current(j)>ioff)
%         dx(j) = koff*((current(j)./ioff)-1).^alpha_off;
%     else
%         dx(j) = 0;
%     end
%    
% end
% 
% plot(current, dx)