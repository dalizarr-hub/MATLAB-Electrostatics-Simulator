clear;clc;close all

% Constants
k = 8.99e9;

% Charges
q = [5e-9,5e-9,5e-9,5e-9,5e-9,-5e-9,-5e-9,-5e-9,-5e-9,-5e-9];

% Charge locations
qx = [-3,-3,-3,-3,-3,3,3,3,3,3];
qy = [-4,-2,0,2,4,-4,-2,0,2,4];

% Create grid
x = -10:0.5:10;
y = -10:0.5:10;
[X,Y] = meshgrid(x,y);

% Compute field and potentials
[Ex, Ey, V] = Compute_Field(q, qx, qy, X, Y, k);

%Plot everything
Plot_Field(X,Y,Ex,Ey,V,q,qx,qy,'Parallel-Plate Capacitor Approximation: Field Lines and Equipotential Contours');
