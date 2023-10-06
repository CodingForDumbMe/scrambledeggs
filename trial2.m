t = linspace(0.01, 10000, 1000000);
f = sin(pi * t); 
F = fft(f);

N = length(F);
Fs = 1 / (t(2) - t(1));
frequencies = (-N/2:N/2-1) * Fs / N;
w = frequencies(frequencies ~= 0); 
G = interp1(1 ./ w, F(frequencies ~= 0), w, 'linear', 'extrap');
figure;
% g = ifft(ifftshift(G));

subplot(3, 1, 1);
plot(t, f);
xlabel('Time');
ylabel('Magnitude');
title('Original Signal f(t)');

subplot(3, 1, 2);
plot(frequencies, abs(fftshift(F)));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Fourier Transform F(w)');

subplot(3, 1, 3);
plot(w, abs(G));
xlabel('Frequency');
ylabel('Magnitude');
title('Inverted around 1');

% The error currently comes from the points being discrete, leading to
% unnecessary noise especially around 0


