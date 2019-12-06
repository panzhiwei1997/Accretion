x = linspace(0,5,450);
t = linspace(0,20,200);
m = 0;
sol = pdepe(m,@pdex1pde,@pdex1ic,@pdex1bc,x,t);
u = sol(:,:,1);
% 
% 
% hold on
% for i=1:7
%     plot(power(x,2),gmultiply(u(30*i-20,:),power(x,-1)))
% end
% xlabel('r')
% ylabel('Sigma')
% axis([0.05 2,0 8])
% 
% function [c,f,s] = pdex1pde(x,t,u,ux)
% c = x*x;
% mu=0.001;
% f = 0.75*mu*ux;
% s = 0;
% end
% 
% function u0 = pdex1ic(x)
% u0 = 100*exp(-(x-1)^2*100000);
% end
% 
% function [pl,ql,pr,qr] = pdex1bc(xl,ul,xr,ur,t)
% pl = 0;
% ql = 1;
% pr = 0;
% qr = 1;
% end
% %%%%%%%%%%%%%%%%%%%%%%%%%%%5

%%mu is not constant

hold on
for i=1:7
    plot(power(x,2),gmultiply(u(i*30-20,:),power(x,-3)))
end
xlabel('r')
ylabel('\Sigma')
axis([0.05 2,0 8])

function [c,f,s] = pdex1pde(x,t,u,ux)
c = 1;
mu=0.001;
f = 0.75*mu*ux;
s = 0;
end

function u0 = pdex1ic(x)
u0 = 100*exp(-(x-1)^2*100000);
end

function [pl,ql,pr,qr] = pdex1bc(xl,ul,xr,ur,t)
pl = 0;
ql = 1;
pr = 0;
qr = 1;
end
