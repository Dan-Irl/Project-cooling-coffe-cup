function kc = kc(T)
%calcualtes the mass transfer coeff for the top surface

global Tinf kc_coeff

Tfilm = (T+Tinf)/2;

kc = kc_coeff*h_topsurface_air(T,Tinf)*pr_air(Tfilm).^(2/3)/(rho_air(Tfilm)*cp_air(Tfilm)*sc_h2o2air(Tfilm).^(2/3));
%disp(kc);
end

