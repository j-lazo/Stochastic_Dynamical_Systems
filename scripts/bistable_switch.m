%Bistable Switch 
%Based on Gillespie D. Exact Stochastic SImulation of COupled Chemical...

clear all
close all
clc

%initial conditions 

global alpha1
global alpha2
global gamma
global beta


alpha1=156.25;
alpha2=15.6;
beta=2.5;
gamma=1.1;


u0=1;
v0=6;

t0=0;
t=t0;

u=u0;
v=v0;

uplot=ones(1,1)*u0;
vplot=ones(1,1)*v0;
tplo=zeros(1,1);
tplo(1,1)=t0;



s=0;
smax=50000;

while s<smax    
    
    a(1)=alpha1/(1+v^beta);
    a(2)=u;
    a(3)=alpha2/(1+u^gamma);
    a(4)=v;
    a0=sum(a);
    %step 2
    r=rand(2,1);
    tao=-log(r(1))/a0;
    mu=find((cumsum(a) >= r(2)*a0),1,'first');
    %step 3
    t=t+tao;
    
    if mu==1
        u=u+1;
    elseif mu==2
        u=u-1;        
    elseif mu==3
        v=v+1;
    elseif mu==4
        v=v-1;
    end
    
    
 s=s+1;
 tplo(s)=t;
 uplot(s)=u;
 vplot(s)=v;
 end
 
%plots and ode solver    

figure(1)    
%plot(tplo,Xplot,'*b',te,ex,'r');
plot(tplo,uplot,'r',tplo,vplot,'b');
grid on
xlabel('time');
ylabel('X(t)');
title('Simple Decay example');
legend('U','V')
%saveas(figure(1),'/home/jl/MI_BIBLIOTECA/Escuela/Lund/II/Systems Biology/P2/untitled61.png');
