clear;
close all;
clc;

%% Bifurkacja

% alfa = 1.7;
% z = 4000;
% x1 = 0.6;
% 
% for i = 0:z
%     x1 = alfa*x1*(1-x1);
%     alfa = alfa + 0.00085;
%     hold on;
%     figure(1)
%     plot(alfa, x1, 'b.');
%     axis ([0.9 4.1 -0.1 1.1]);
% end

%wykres bifurkacji
Npre = 20000; Nplot = 100;
x = zeros(Nplot,1);
for r = 2.5:0.0005:4.0
  x(1) = 0.6;
  for n = 1:Npre
  x(1) = r*x(1)*(1 - x(1));
  end
  for n = 1:Nplot-1
  x(n+1) = r*x(n)*(1 - x(n));
  end
  plot(r*ones(Nplot,1), x, 'b.', 'markersize', 1);
  hold on;
end
xlabel('r');  ylabel('x_n');
set(gca, 'xlim', [2.5 4]);
hold off;

    
%% Uklad Lorenza

% sigma = 10;
% r = 99.96;
% b = 8/3;
% dy = @(t,y)[sigma*(y(2)-y(1));
%             -y(1)*y(3)+r*y(1)-y(2);
%             y(1)*y(2)-b*y(3)];
% % rozwiązanie układu
% [t,y] = ode45(dy,[0 100],[0 0.5 1]);
% % rysowanie wyniku
% comet3(y(:,1),y(:,2),y(:,3))