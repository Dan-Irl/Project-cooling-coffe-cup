function h = h_topsurface_water(Tbulk,Tsurf)
% Returns the heat transfer coeff for the mantel surface using
% dimenssionless numbers Ra, Nu
global top_A beakerinnerdim 


Tfilm = (Tbulk+Tsurf)/2;
circum = pi*beakerinnerdim;
alpha = k_water(Tfilm)/(rho_water(Tfilm)*cp_water(Tfilm));


Ra = (rho_water(Tfilm)*9.82*210e-6*(abs(Tbulk-Tsurf))*(top_A/circum).^3)/(my_water(Tfilm)*alpha);

if Ra < 0
    Ra = 0;
end

if 0 <= Ra && Ra < 2E7
    Nu = 0.54*Ra.^(1/4);
elseif 2E7 < Ra && Ra < 1E10
    Nu = 0.14*Ra.^(1/3);
else
    %disp('Nu top outside bounds')
end

h = Nu*k_water(Tfilm)/(top_A/circum);
end



