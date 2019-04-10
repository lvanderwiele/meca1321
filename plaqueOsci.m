y = (0:0.01:6)';
t = [0 1 2 3 4 5 6]*pi/6;

u = y;

for i = 1:numel(t)
  u = [u (exp(-y).*cos(t(i) - y))];
end

tab = array2table(["a", "b", "c", "d", "e", "f", "g", "h" ; u]);
writetable(tab, 'plaqueOsci.csv', 'writeVariableNames', false)
