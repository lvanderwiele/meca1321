r = linspace(-1, 1, 200)';
t = [0 pi/4 pi/2 3*pi/4];
omega = 20;

u = r;

for i = 1:numel(t)
  u = [u real((4/(j*omega))*(1- (besselj(0, exp(j*3*pi/4)*sqrt(omega)*r))./(besselj(0, exp(j*3*pi/4)*sqrt(omega))))*exp(j*t(i)))];
end

tab = array2table(["a", "b", "c", "d", "e"; u]);
writetable(tab, 'forcageRapide.csv', 'writeVariableNames', false)
