function pr_air = pr_air(T)
my = my_air(T);
cp = cp_air(T);
k = k_air(T);

pr_air = my*cp/k;
end