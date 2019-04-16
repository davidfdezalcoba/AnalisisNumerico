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

fun = @funcbelza; x0 = [0.25;0.75;0.25]; tinic=0; tfin=1; N=500; jac = @jacfuncbelza; itmax = 100; par=[2e4,8e-4,10000,0.75]
