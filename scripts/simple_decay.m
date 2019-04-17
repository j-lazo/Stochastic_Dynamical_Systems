function simple_decay();
%Simple Decay Program 
%Based on Gillespie D. Exact Stochastic SImulation of COupled Chemical...
%Reactions, 

clear all
close all
clc

%initial conditions 

global c
c=0.5;
x0=500;

t0=0;
t=t0;
x=x0;

X=x0;
Xplot=ones(1,x0)*x0;
tplo=zeros(1,x0);
tplo(1,1)=t0;
X(1,1)=x;
mu=1;

    for i=1:x0-1

    a=X*c;
    a0=sum(a);
    r=rand(2,1);
    
    tao=1/a0*log(1/r(1));
    mu = sum(r(2)*a0 <= cumsum(a));
    
    X(mu)=X(mu)-1;
    Xplot(mu,i)=X(mu);
    
    t=t+tao;    
    tplo(i)=t;
    end
 
%plots and ode solver    
[te,ex]=ode45(@simple_dec,[0 11],x0);
figure(1)    
plot(tplo,Xplot,'*b',te,ex,'r');
%plot(tplo,Xplot,'*r');
grid on
xlabel('time');
ylabel('X(t)');
title('Simple Decay example');
legend('Gillespies Simulation','Deterministic')

saveas(figure(1),strcat(pwd,'/results/','figure1.png'));
saveas(figure(nr),save);



function result=simple_dec(t,x);
%state definition
%global c
x=x(1);
dxdt=-c*x;
%disp('running...');
result=[dxdt];
end

end
