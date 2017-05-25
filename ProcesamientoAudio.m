clear all

%% ----- Read Audio ----- %%

%song = 'PaintedBlack.mp3';
song = 'acoustic.wav';

[audio,fs] = audioread(song); % audio = data, fs = sample frequency

%% ----- Vibrato ----- %%

% Set parameters for vibrato effect
Modfreq = 1; % Hz
Width = 0.007; % s

% Vibrato
yvib = vibrato(audio, fs, Modfreq, Width);

%% ----- Write Audio ----- %%

audiowrite('effect3.wav',yvib,fs);

%% ----- Play Audio ----- %%

song_effect = 'effect3.wav';
[audio_effect,fs] = audioread(song_effect);

sound(audio_effect,fs);