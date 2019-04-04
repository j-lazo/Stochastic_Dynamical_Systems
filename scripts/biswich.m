%PROGRAMA PARA DEFINIR CONDICIONES INICIALES Y LLAMAR AL SISTEMA A RESOLVER
clc
clear all

global alpha1
global alpha2
global gamma
global beta
global eta
global K

alpha1=156.25;
alpha2=15.6;
beta=2.5;
gamma=1.1;


%%
%first set of nice parameters



x0=[1 6];
[t,x]=ode45(@aux_pfinal,[0 45],x0);

%1st graphic
figure(1)
plot(t,x(:,1),t,x(:,2))
grid on
xlabel('time');
ylabel('Expression');
title('Bistable Switch');
legend('u','v')
%htext=text(15,120,sprintf('\\alpha_0= %0.1g , \n \\alpha= %0.1g , \n \\beta= %0.1g, \n n= %0.1g',alpha0 ,alpha,beta,n ),'FontSize',16);
saveas(figure(1),'/home/jl/MI_BIBLIOTECA/Escuela/Lund/II/Systems Biology/P2/biswitchvv1u6.png');


function salida=aux_pfinal(t,x);

%state definition

global alpha1
global alpha2
global gamma
global beta


u=x(1);
v=x(2);

dudt=-u+alpha1/(1+v^beta);
dvdt=-v+alpha2/(1+u^gamma);

%disp('running...');

salida=[dudt; dvdt];
end

