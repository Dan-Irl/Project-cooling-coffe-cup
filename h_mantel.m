function h = h_mantel(To)
% Returns the heat transfer coeff for the mantel surface using
% dimenssionless numbers Ra, Nu
global Tinf h_mantel_coeff beakerheight

Tfilm = (To+Tinf)/2;
%Here T represents the film temperature

Gr = (rho_air(Tfilm).^2*9.82*(1/Tfilm)*(abs(To-Tinf))*beakerheight.^3)/my_air(Tfilm).^2;
    
alpha = k_air(Tfilm)/(rho_air(Tfilm)*cp_air(Tfilm));

Ra = (rho_air(Tfilm)*9.82*(1/Tfilm)*(abs(To-Tinf))*beakerheight.^3)/(my_air(Tfilm)*alpha);

Nu = 0.68 + (0.67*Ra.^(1/4)/(1+(0.492/pr_air(Tfilm)).^(9/16)).^(4/9));

h = Nu*k_air(Tfilm)/beakerheight;
end


