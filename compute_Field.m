function [Ex, Ey, V] = Compute_Field(q, qx, qy, X, Y, k)

% Initialization of total electric field and voltage
Ex = zeros(size(X));
Ey = zeros(size(Y));
V  = zeros(size(X));

% Loop through every charge
for i = 1:length(q)

    % Displacement from current charge
    rx = X - qx(i);
    ry = Y - qy(i);

    % Distance from current charge
    R = sqrt(rx.^2 + ry.^2);

    % Avoid division by zero
    R(R == 0) = NaN;

    % Electric field contribution
    Ex = Ex + k*q(i)*rx./R.^3;
    Ey = Ey + k*q(i)*ry./R.^3;

    % Voltage contribution
    V = V + k*q(i)./R;

end

end