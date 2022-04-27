function sc = sc_h2o2air(T)
%calcualtes the Schmidt number for water vapor into air
global Tinf
Tfilm = (T+Tinf)/2;


sc = my_air(Tfilm)./(rho_air(Tfilm)*D_h2o2air(Tfilm));
end

