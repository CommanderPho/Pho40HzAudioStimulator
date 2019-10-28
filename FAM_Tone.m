function [s] = FAM_Tone(fc, fm, t)
%FAM_TONE Summary of this function goes here
%   Detailed explanation goes here
s = sin(2*pi*fc*t).*sin(2*pi*fm*t);
s(sin(2*pi*fm*t) <= 0) = 0;
end

