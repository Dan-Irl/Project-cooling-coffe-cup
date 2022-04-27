function h = h_mantel(T,Tfilm,m)
global Tinf

%Here T represents the film temperature

Gr = (rho_air(Tfilm).^2*9.82*(1/Tfilm)*(T-Tinf)*height_water(T,m).^3)/my_air(Tfilm).^2;
    
alpha = k_air(Tfilm)/(rho_air(Tfilm)*cp_air(Tfilm));

Ra = (rho_air(Tfilm)*9.82*(1/Tfilm)*(T-Tinf)*height_water(T,m).^3)/(my_air(Tfilm)*alpha);

Nu = 0.68 + (0.67*Ra.^(1/4)/(1+(0.492/pr_air(Tfilm)).^(9/16)).^(4/9));

h = Nu*k_air(Tfilm)/height_water(T,m);


