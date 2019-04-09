r = (-1:0.01:1)';
t = [0 0.02 0.07 0.15 0.3 0.8 1];
l = [2.4048, 5.5201, 8.6537, 11.7915, 14.9309];

rmat = repmat(r, 1, numel(l));
lmat = repmat(l, numel(r), 1);

u = r;
for i = 1:numel(t)
  utemp  = 1 - r.^2 - 8*sum((besselj(0, lmat.*rmat)./(lmat.^3 .* besselj(1, lmat))).*exp(-lmat.^2 * t(i)),2);

  if i == 1
    utemp = utemp*0;
  end
  u = [u utemp];
end
tab = array2table(["a", "b", "c", "d", "e", "f", "g", "h" ; u]);
writetable(tab, 'instatio.csv', 'writeVariableNames', false)
