y = (0:0.1:10)';
nu = [0.5 1 2 5];

u = y;

for i = 1:numel(nu)
  u = [u (2*exp(-(y/nu(i)).^2)/(sqrt(pi)*nu(i)))]
end

tab = array2table(["a", "b", "c", "d", "e" ; u]);
writetable(tab, 'demarPlaqueTourb.csv', 'writeVariableNames', false)
