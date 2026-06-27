function Plot_Field(X,Y,Ex,Ey,V,q,qx,qy,myTitle)

% Normalization of electric field
E_mag = sqrt(Ex.^2+Ey.^2);
E_mag(E_mag == 0) = NaN;
Exn = Ex./E_mag;
Eyn = Ey./E_mag;

% Plot of equipotential lines
contour(X,Y,V,10)
hold on
% Plot of electric field vectors
streamslice(X,Y,Exn,Eyn)

% Plot of charges
for i = 1:length(q)
    if q(i) > 0
        plot(qx(i),qy(i),'ro','MarkerFaceColor','r','MarkerSize',8)
    else
        plot(qx(i),qy(i),'bo','MarkerFaceColor','b','MarkerSize',8)
    end
end
axis equal
grid on
xlabel('x')
ylabel('y')
title(myTitle)

end