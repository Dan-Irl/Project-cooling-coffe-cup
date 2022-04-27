function height = height_water(T,m)
global beakerinnerdim

height = 4*m./(pi*beakerinnerdim.^2*rho_water(T));

end

