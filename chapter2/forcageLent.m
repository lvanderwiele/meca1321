r = (-1:0.01:1)';
omega = 1/2;
t = [0, pi/4, pi/2, 3*pi/4];
u = r;

for i = 1:numel(t)
  u = [u, real(((1 - r.^2) - j*(omega/16)*(r.^4 - 4*r.^2 + 3))*exp(j*t(i)))];
end

tab = array2table(["a", "b", "c", "d", "e" ; u]);
writetable(tab, 'forcageLent.csv', 'writeVariableNames', false)
