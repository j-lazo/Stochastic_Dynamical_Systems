%Lotka reactions
%Based on Gillespie D. Exact Stochastic SImulation of COupled Chemical...
function lotca_stochastic();

clear all
close all
clc

%initial conditions 

global alpha;
global beta;
global delta;
global gamma;

alpha=10;
beta=0.01;
delta=beta;
gamma=10;


x0=1002;
y0=1002;

t0=0;
t=t0;

x=x0;
y=y0;

xplot=ones(1,1)*x0;
yplot=ones(1,1)*y0;
tplo=zeros(1,1);
tplo(1,1)=t0;



s=0;
smax=90000;

while s<smax    
    
    a(1)=alpha*x;
    a(2)=beta*x*y;
    a(3)=delta*x*y;
    a(4)=gamma*y;
    a0=sum(a);
    %step 2
    r=rand(2,1);
    tao=-log(r(1))/a0;
    mu=find((cumsum(a) >= r(2)*a0),1,'first');
    %step 3
    t=t+tao;
    
    if mu==1
        x=x+1;
    elseif mu==2
        x=x-1;        
    elseif mu==3
        y=y+1;
    elseif mu==4
        y=y-1;
    elseif mu==5
            x=x;
    elseif mu==6
            y=y;
    end
   
 s=s+1;
 tplo(s)=t;
 xplot(s)=x;
 yplot(s)=y;
 end
 
%plots and ode solver    

figure(1)    
%plot(tplo,Xplot,'*b',te,ex,'r');
plot(tplo,xplot,'r',tplo,yplot,'b');
grid on
xlabel('time');
ylabel('Number of individuals');
title('Lotka-Voletrra Stochastic Model');
legend('Prey','Predator')
pos = get(gcf, 'Position'); %// gives x left, y bottom, width, height
equis = pos(3);
ye = pos(4);
htext=text(equis/2,ye/2,sprintf('\\alpha= %0.1g , \n \\gamma= %0.1g , \n \\delta= %0.1g, \n x_0= %0.1g \n y_0= %0.1g',alpha ,beta,gamma,delta,x0,y0),'FontSize',16);
dir1='/home/jl/MI_BIBLIOTECA/Escuela/Lund/II/Systems Biology/P2/lotkavolterratimegraph';
save=strcat(dir1,num2str(y0),num2str(x0),'.png');  
saveas(figure(1),save);

figure(2)
plot(xplot,yplot,'b');
grid on
xlabel('Number of Predators');
ylabel('Number of Preys');
title('Lotka-Voletrra Stochastic Model Y vs X graph');
pos1 = get(gcf, 'Position'); %// gives x left, y bottom, width, height
xx1=pos1(1)
yy1=pos1(2)
equis = pos1(3)
ye = pos1(4)
pos1
htext=text(750,900,sprintf('\\alpha= %0.1g , \n \\gamma= %0.1g , \n \\delta= %0.1g, \n x_0= %0.1g \n y_0= %0.1g',alpha ,beta,gamma,delta,x0,y0),'FontSize',16);
dir2='/home/jl/MI_BIBLIOTECA/Escuela/Lund/II/Systems Biology/P2/lotkavolterrayyvsx';
%save=strcat(dir2,num2str(y0),num2str(x0),'.png');    
%saveas(figure(2),save);
end
