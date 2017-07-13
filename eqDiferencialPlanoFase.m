%
% M-File para traçar as trajectórias no Plano de Fase
% de Equacoes diferenciais de segunda ordem
% Dezembro de 1999
% Manuel Silva, Tenreiro Machado
%
%-------------------------------------------------------------------
%-------------------------------------------------------------------
%
%Definição e valores por defeito dos parâmetros
%
%-------------------------------------------------------------------
%Limpeza da memória do MATLAB
clear;
%Limpeza da janela com o gráfico
close;
%variavel auxiliar
aux=1;
%incremento temporal
dt=0.01;
%intervalo de tempo a considerar
t0=0;
t_max=6;


for i=t0:dt:t_max
    vector_t(aux)=[i];
    aux=aux+1;
end
aux=1;
%Numero de pontos na grelha
n=6;
%Valores maximos da grelha
x_max=1;
Dx_max=1;
%-------------------------------------------------------------------
%
%Desenho da equação diferencial no Plano de Fase
%
%-------------------------------------------------------------------
%Inicializacao da posicao e da velocidade: Condicoes iniciais
for i = 1:n
    for j = 1:n
        
        %Posicao inicial na grelha
        x1=(i-(n+1)/2)*x_max/n;
        
        %Velocidade inicial na grelha
        x2=(j-(n+1)/2)*Dx_max/n;
        
        %vector inicial
        x0=[x1;x2];
        
        %-----------------------------------------------------------------
        %
        %Integração das equações diferenciais pelo método de Runge Kutta 4(5)
        %
        %-----------------------------------------------------------------
        [t,x]=ode45('caso3',vector_t,x0);
        %
        %Representação das trajectórias no plano de fase
        %
        if (aux == 1)
            plot(x(:,1),x(:,2));
            hold on;
            aux=2;
        else
            plot(x(:,1),x(:,2))
        end
    end %ciclo j
end %ciclo i
hold off
%
%Apresentar a parte importante do gráfico
%
axis([-x_max,x_max,-Dx_max,Dx_max])
%
%Desenho dos eixos do gráfico
%
line([-x_max,x_max],[0,0])
line([0,0],[-Dx_max,Dx_max])
%
%Legendas dos eixos do gráfico
%
xlabel('x1')
ylabel('x2')