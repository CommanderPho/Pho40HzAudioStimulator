%% Implementation of the audio soundwaves described in "B. McDermott et al. / Gamma Band Neural Stimulation in Humans and the Promise of a New Modality"
% Uses examples from http://users.jyu.fi/~maarhart/sound-processing-matlab/sound-processing-matlab.html

% General
fs = 48000;
soundRecordingLength = 180;
t = 0:1/fs:soundRecordingLength;


% f = 200;         
% A = .5;      
% w = 0 * pi/180; % degrees 
% y = A * sin(2*pi*f*t + w);
% plot(t,y)
% sound( y, fs, 16 );

%% Simple Sinusoidal AM Tone:
fc = 440;
fm = 40;

% s = sin(2*pi*fc*t).*sin(2*pi*fm*t);

% s_AM = AM_Tone(fc, fm, t);
% figure(1)
% plot(t,s_AM)
% title('s_AM')
% sound( s_AM, fs, 16 );


%% FAM Tone:
fc = 440;
fm = 40;

% s = sin(2*pi*fc*t).*sin(2*pi*fm*t).*sin(2*pi*fm*t);
% s(s <= 0) = 0;

s_FAM = FAM_Tone(fc, fm, t);
% figure(2)
% plot(t,s_FAM)
% title('s_FAM')
%sound( s_FAM, fs, 16 );

audiowrite('output/40Hz_FAM.flac', s_FAM, fs)