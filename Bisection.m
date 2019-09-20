clear all; clc
f = @(x) -(1/((x-0.3)^2+0.01) + 1/((x-0.9)^2+0.04) - 6);

alfa1 = (3 - sqrt(5))/2;
alfa2 = (1 - alfa1);

x_e = @(a,b) a+alfa1*(b-a);
x_d = @(a,b) a+alfa2*(b-a);

i = 0;
parada = 0

pontos = [-2. , 2.];

tolerancia = 1e-6
distancia = pontos(2)-pontos(1)

while(abs(pontos(1)-pontos(2))/distancia > tolerancia) 
  i++;
  ponto_medio = (pontos(1) + pontos(2))/2;
  ponto_medio_1 = (pontos(1) + ponto_medio)/2;
  ponto_medio_2 = (pontos(2) + ponto_medio)/2;
  if(f(pontos(1))>f(pontos(2)))
    pontos(1) = ponto_medio_1;
  elseif(f(pontos(1))<f(pontos(2)))
    pontos(2) = ponto_medio_2;
  end
  i
  [pontos(1) pontos(2)]
end
