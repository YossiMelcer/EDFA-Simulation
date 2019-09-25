% General Parameters

h = 6.626e-34; % Planck's contstant
c = 3e8; %Speed of light in vacuum

% Signal/Pump Parameters

wlp = 980e-9; % Pump Wavelength (m)
wls = 1535e-9; % Signal Wavelength (m)
Pp = 100e-3; % Power of pump input (W)
Ps = 30e-6; % Power of signal input (W)

% System Parameters

L = 10; % Fibre length (m)
dia = 5.5e-6; % Fiber diameter (m)
tau = 10e-3; % Upper state lifetime (s)
dlam = 2e-9; % Optical sampling bandwidth (m)

wl = [wlp (1450e-9:dlam:1600e-9)]';% [m] wavelength vector
[sig12, sig21] = GetErSpectrum(wl); % Absorption/Emission spectrums
Gamma = 0.722; % 0.722 assuming 80% core overlap with Gaussian distributed intensity cross-section


alph = 6.5; % Fiber Absorption (dB/m)
Ntot = ConvAbsDB2N(s.alph,GetErSpectrum(1530)); % Doping concentration 

aseTerm = GetASETerm(GammaS,sig21,lam,h,c,dlam,Ntot); 
