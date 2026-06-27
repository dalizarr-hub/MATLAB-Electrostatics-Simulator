clear;clc;close all

% Constants
k = 8.99e9;

% Charges
q = [5e-9, -5e-9, -5e-9, 5e-9];

% Charge locations
qx = [-2,2,-2,2];
qy = [2,2,-2,-2];

% Create grid
x = -10:0.5:10;
y = -10:0.5:10;
[X,Y] = meshgrid(x,y);

% Compute field and potentials
[Ex, Ey, V] = Compute_Field(q, qx, qy, X, Y, k);

%Plot everything
Plot_Field(X,Y,Ex,Ey,V,q,qx,qy,'Electric Quadrupole: Field Lines and Equipotential Contours')