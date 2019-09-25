function aseTerm = GetASETerm(GammaS,sig21,lam,h,c,dlam,Ntot)

aseTerm = 2*dlam*GammaS.*sig21.*(h*(c^2)./(lam.^3))*Ntot;

end

% GammaS = core overlap. 0.722 assumnig 80% core overlap with Gaussian distributed intensity cross-section
% sig21 = emission term
% lam = wavelength vector
% h = Planck's constant 6.626e-34
% c = Speed of light in a vacuum 3e8
% dlam = 