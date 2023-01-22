clear all
close all
clc


[x,fs]= audioread("bluewhale.au"); 
chant = x(2.45e4:3.10e4); 

N = length(chant); 
ts = 1/fs; 

t = (0:N-1)*(10*ts); 
% plot(t,chant);

dsp_chant =  (abs(fft(chant)).^2)/N;
f = (0:floor(N/2))*(fs/N)/10;

plot(f,dsp_chant(1:floor(N/2)+1))