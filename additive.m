syms p
f = sin(p)/(p^2+1); 
g = exp(-p^2);

subplot(3, 1, 1);
fplot(f, [-5 5]);
xlabel('Time');
ylabel('Magnitude');
title('Magnitude of f(t)');
h = f + g;
subplot(3, 1, 2);
fplot(g, [-5 5]);
xlabel('Time');
ylabel('Magnitude');
title('Magnitude of g(t)');
subplot(3, 1, 3);
fplot(h, [-5 5]);
xlabel('Time');
ylabel('Magnitude');
title('Magnitude of f(t) + g(t)');
