clear all
close all
par = [];

% Practicas 1-8

% fun = @funcvanderpol; x0 = [0.1;0.2]; tinic=0; tfin=10; N=1000; par = [1,-0.2]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=10; N=1000; jac = @jacvanderpol; itmax = 100; par = [1,-0.2];
% fun = @funcecrigida; x0 = 0; tinic = 0; tfin = pi/2; N = 25;
% fun = @funcecrigida; x0 = 0; tinic = 0; tfin = pi/2; N = 40;
% fun = @funcecrigida; x0 = 0; tinic = 0; tfin = pi/2; N = 50;
% fun = @funcecrigida; x0 = 0; tinic = 0; tfin = pi/2; N = 100;

% Practica 9 -----------------------------------------

% Parte 1

% fun = @funcpendulo; x0 = [0.1;0.1]; tinic=0; tfin=10; N=1000; par=[0,0,9.8,1]
% fun = @funcpendulo; x0 = [0.1;0.1]; tinic=0; tfin=10; N=1000; par=[0,0.25,9.8,1]
% fun = @funcpendulo; x0 = [0.1;0.1]; tinic=0; tfin=10; N=1000; par=[0,1.5,9.8,1]

% Parte 2

% fun = @funcpendulolin; x0 = [0.1;0.1]; tinic=0; tfin=10; N=1000; par=[0,9.8,1];
% fun = @funcpendulolin; x0 = [0.1;0.1]; tinic=0; tfin=10; N=1000; par=[0.25,9.8,1];
% fun = @funcpendulolin; x0 = [0.1;0.1]; tinic=0; tfin=10; N=1000; par=[1.5,9.8,1];

% Parte 3

% fun = @funcpendulo; x0 = [pi;0]; tinic=0; tfin=10; N=1000; par=[0,0,9.8,1]

% Parte 4

% fun = @funcpendulo; x0 = [pi/2;0]; tinic=0; tfin=10; N=1000; par=[9.7,1/2,9.8,1]
% fun = @funcpendulo; x0 = [pi/2;0]; tinic=0; tfin=10; N=1000; par=[9.8,1/2,9.8,1]
% fun = @funcpendulo; x0 = [pi/2;0]; tinic=0; tfin=10; N=1000; par=[9.9,1/2,9.8,1]

% Practica 10

% Parte 1

% fun = @funcdeppresa; x0 = [1;1]; tinic=0; tfin=100; N=1000; par=[1,1,1,2]
% fun = @funcdeppresa; x0 = [1;1]; tinic=0; tfin=100; N=1000; par=[3,0.2,0.6,5]
% fun = @funcdeppresa; x0 = [30;50]; tinic=0; tfin=100; N=1000; par=[0.4,0.01,0.3,0.005]
% fun = @funcdeppresa; x0 = [100;5000]; tinic=0; tfin=100; N=1000; par=[0.4,0.01,0.3,0.005]

% Parte 2

% fun = @funccompet; x0 = [1;1]; tinic=0; tfin=100; N=1000; par=[1,1,1,0.2,0.4,0.0001]

% Parte 3

% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[1, -0.2]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[1, 0]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[1, 0.2]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[1, 1]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[2, 1]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[3, 1]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[4, 1]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[5, 1]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[6, 1]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[7, 1]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[8, 1]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[9, 1]
% fun = @funcvanderpol; x0 = [-2;0]; tinic=0; tfin=100; N=1000; par=[10, 1]

% Parte 4

% fun = @funcduffing; x0 = [1;1]; tinic=0; tfin=100; N=1000; par=[0]

% Parte 5

% fun = @funclorenz; x0 = [0;2;0]; tinic=0; tfin=35; N=5000; par=[10, 28, 8/3]

% Practica 11

% fun = @funcvanderpol; x0 = [2;8]; tinic=0; tfin=100; N=4000; par=[30,1]
% fun = @funcvanderpol; x0 = [2;8]; tinic=0; tfin=100; N=4000; jac = @jacvanderpol; itmax = 100; par=[30,1]

% Practica 12

% fun = @funcbelza; x0 = [0.25;0.75;0.25]; tinic=0; tfin=1; N=500; jac = @jacfuncbelza; itmax = 100; par=[2e4,8e-4,10000,0.75]

% Practica 20

fun = @funcvanderpol; x0 = [0.1;0.2]; tinic=0; tfin=10; N=1000; fac=0.9; facmax=5; hmin=1e-5; hmax=(tfin-tinic)*0.1; h0=hmin; mono=@mieuler; orden=1; TOL=1e-5; par = [1,-0.2]
% fun = @func23_1; x0 = 1; tinic=0; tfin=2; N=1000; fac=0.9; facmax=5; hmin=1e-5; hmax=(tfin-tinic)*0.1; h0=hmin; mono=@mieuler; orden=1; TOL=1e-5;
% fun = @func23_1; x0 = 1; tinic=0; tfin=2; N=1000; fac=0.9; facmax=5; hmin=1e-5; hmax=(tfin-tinic)*0.1; h0=hmin; mono=@mirk4; orden=4; TOL=1e-5;
% fun = @func23_2; x0 = 1; tinic=0; tfin=2; N=1000; fac=0.9; facmax=5; hmin=1e-5; hmax=(tfin-tinic)*0.1; h0=hmin; mono=@mieuler; orden=1; TOL=1e-5;
% fun = @func23_2; x0 = 1; tinic=0; tfin=2; N=1000; fac=0.9; facmax=5; hmin=1e-5; hmax=(tfin-tinic)*0.1; h0=hmin; mono=@mirk4; orden=4; TOL=1e-5;

% Practica 21

% fun = @funcvanderpol; x0 = [0.1;0.2]; tinic=0; tfin=10; N=1000; fac=0.9; facmax=5; hmin=1e-7; hmax=(tfin-tinic)*0.1; h0=hmin; TOL=1e-5; par = [1,-0.2]
% fun = @func23_1; x0 = 1; tinic=0; tfin=2; N=1000; fac=0.9; facmax=5; hmin=1e-5; hmax=(tfin-tinic)*0.1; h0=hmin; mono=@mitrap; mono2=@mieuler; orden=2; orden2=1; TOL=1e-5;
% fun = @func23_2; x0 = 1; tinic=0; tfin=2; N=1000; fac=0.9; facmax=5; hmin=1e-5; hmax=(tfin-tinic)*0.1; h0=hmin; mono=@mitrap; mono2=@mieuler; orden=2; orden2=1; TOL=1e-5;

% Practica 23

% fun = @func23_1; x0 = 1; tinic=0; tfin=2; N=1000
% fun = @func23_2; x0 = 1; tinic=0; tfin=2; N=1000

% Practica 24

% fun = @funcoscil; x0 = 1/exp(1); tinic=0; tfin=8; N=2000; fac=0.9; facmax=5; hmin=1e-5; hmax=0.001; h0=(tfin-tinic)/N; mono=@mirk4; mono2=@mieuler; orden=4; orden2=1; TOL=1e-3;

% Practica 26
%Parte 1:
% pqr={@(t)0, @(t)4, @(t)-4*t}; a=0; b=2; tinic=0; tfin=1; N=1000; C1=0; C2=0;

%Parte 2:
% pqr={@(t)3, @(t)2, @(t)3*cos(t)}; a=-2; b=1; tinic=0; tfin=5; N=1000; C1=0; C2=1;

%Parte 3:
% pqr={@(t)0, @(t)cos(t), @(t)t}; a=-2; b=-1; tinic=0; tfin=10; N=1000; C1=1; C2=0;

%Parte 4:    
% pqr={@(t)1-sin(t), @(t)cos(t), @(t)sin(t)}; a=-2; b=-1; tinic=0; tfin=10; N=1000; C1=1; C2=1;

% Practica 28

%Parte 1:
% ffxfy={@(t,x,y)2*x^3, @(t,x,y)6*x^2, @(t,x,y)0}; a=1/2; b=1/3; tinic=1; tfin=2; N=1000; C1=0; C2=0; TOL = 0.0001;

%Parte 2:
% ffxfy={@(t,x,y)8*x^3, @(t,x,y)24*x^2, @(t,x,y)0}; a=1/3; b=-2/25; tinic=0; tfin=1; N=1000; C1=0; C2=1; TOL = 0.0001;

%Parte 3:
% ffxfy={@(t,x,y)(-t*y+x+t)^3 + 1/t, @(t,x,y)3*(-t*y+x+t)^2, @(t,x,y)3*(-t)*(-t*y+x+t)^2}; a=1; b=exp(1); tinic=1; tfin=exp(1); N=1000; C1=1; C2=0; TOL = 0.0001;

%Parte 4:
% ffxfy={@(t,x,y)-y^2+x+t, @(t,x,y)1, @(t,x,y)-2*y}; a=0; b=2; tinic=1; tfin=2; N=1000; C1=1; C2=1; TOL = 1;

% Practica 29

% ffxfy={@(t,x,y)(2*sin(t^2) + 8*t^2)*x - 4*t^2*x*log(x) + 2*t*sin(t^2)*y, ...
%        @(t,x,y)(2*sin(t^2) + 8*t^2) - 4*t^2*(log(x) + 1), ...
% 	   @(t,x,y)2*t*sin(t^2)};
% tinic=0; tfin=sqrt(10.5*pi); a=exp(1); b=exp(2); N=1000; C1=0; C2=0; TOL=0.0001;

% Practica 31

pqr={@(t)0, @(t)4, @(t)-4*t}; a=0; b=2; tinic=0; tfin=1; N=1000; C1=0; C2=0;
