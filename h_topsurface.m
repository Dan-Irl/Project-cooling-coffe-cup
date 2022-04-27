function h = h_topsurface(T)
% Returns the heat transfer coeff for the mantel surface using
% dimenssionless numbers Ra, Nu
global top_A beakerinnerdim Tinf

Tfilm = (T+Tinf)/2;
circum = pi*beakerinnerdim;
alpha = k_air(Tfilm)/(rho_air(Tfilm)*cp_air(Tfilm));

Ra = (rho_air(Tfilm)*9.82*(1/Tfilm)*(T-Tinf)*(top_A/circum).^3)/(my_air(Tfilm)*alpha);

if 0 < Ra && Ra < 2E7
    Nu = 0.54*Ra.^(1/4);
elseif 2E7 < Ra && Ra < 1E10
    Nu = 0.14*Ra.^(1/3);
else
    %disp('Nu top outside bounds')
end

h = Nu*k_air(Tfilm)/(top_A/circum);
end

