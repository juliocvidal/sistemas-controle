function dx=caso2(t,x);
%-------------------------------------------------------------------
%
%Definição das variáveis
%
%-------------------------------------------------------------------
 %x(1)=x(t)
 %x(2)=dx/dt
%-------------------------------------------------------------------
%
%Definição da equação diferencial a desenhar no Plano de Fase
%
%-------------------------------------------------------------------
 %
 %Equação 6 - Pag. 26 dos apontamentos
 %
 %DDx+abs(Dx)+x=0
 % => x(1)=x(t),x(2)=Dx,Dx(2)=DDx
 %
 dx=[x(2);-x(1)-abs(x(2))]; 