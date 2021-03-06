function Hd = band_pass(Fstop1,Fpass1,Fpass2,Fstop2,Astop1,Apass,Astop2,Fs)
%BAND_PASS_03 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.3 and DSP System Toolbox 9.5.
% Generated on: 06-Jul-2018 03:43:06

% Butterworth Bandpass filter designed using FDESIGN.BANDPASS.

% All frequency values are in Hz.
% Fs = ;  % Sampling Frequency
% 
% Fstop1 = ;          % First Stopband Frequency
% Fpass1 = ;          % First Passband Frequency
% Fpass2 = ;        % Second Passband Frequency
% Fstop2 = ;        % Second Stopband Frequency
% Astop1 = ;          % First Stopband Attenuation (dB)
% Apass  = ;           % Passband Ripple (dB)
% Astop2 = ;          % Second Stopband Attenuation (dB)
match  = 'stopband';  % Band to match exactly

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'butter', 'MatchExactly', match);

% [EOF]
