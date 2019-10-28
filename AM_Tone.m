function [s] = AM_Tone(fc, fm, t)
%AM_TONE Simple Sinusoidal AM Tone:
%   Detailed explanation goes here
s = sin(2*pi*fc*t).*sin(2*pi*fm*t);
end

