function out = Hddot_func(x, u)
global constants
sigma = constants.sigma;
psi = 0; % an extra constant from prior versions
r = x(1:2); phi = x(3);
v = u(1); omega = u(2);
out = (4*(v*cos(phi)*r(1)+v*r(2)*sin(phi)+(1/(r(1)^2+r(2)^2))*sigma ...
    *wrap_angle(atan2(r(2),r(1))-phi)*(v*cos(phi)*r(2)+omega*(r(1)^2+r(2)^2) ...
    -v*r(1)*sin(phi)))^2-4*(psi^2*sigma-sigma*wrap_angle(atan2(r(2),r(1))-phi)^2 ...
    +r(1)^2+r(2)^2)*(v^2*cos(phi)^2+omega*v*cos(phi)*r(2)-omega*v*r(1)*sin(phi) ...
    +v^2*sin(phi)^2-(sigma*(v*cos(phi)*r(2)+omega*(r(1)^2+r(2)^2)-v*r(1)*sin(phi))^2) ...
    /(r(1)^2+r(2)^2)^2-(1/((r(1)^2+r(2)^2)^2))*sigma*v*wrap_angle(atan2(r(2),r(1))-phi) ...
    *(2*v*cos(phi)*r(2)*+omega*(r(1)^2+r(2)^2)-2*v*r(1)*sin(phi))*(cos(phi)*r(1) ...
    +r(2)*sin(phi))))/(4*(psi^2*sigma-sigma*wrap_angle(atan2(r(2),r(1))-phi)^2+r(1)^2+r(2)^2)^(3/2));
end