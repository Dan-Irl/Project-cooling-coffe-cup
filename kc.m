function kc = kc(T)
%calcualtes the mass transfer coeff
global Tinf

Tfilm = (T+Tinf)/2;

kc = h_topsurface(T)*pr_air(Tfilm).^(2/3)/(rho_air(Tfilm)*cp_air(Tfilm)*sc_h2o2air(T).^(2/3));
end

