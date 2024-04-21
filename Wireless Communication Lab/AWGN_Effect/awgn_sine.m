clc;
clear all;
close all;

%Parameters
Fs=1000; %sampling frequency
T=1;     %signal duration
t=0:1/Fs:T-1/Fs; %Time Vector

%Signal generation

%Sinusoidal
f_signal=10; %frequency of signal (Hz)
A_signal= 1; %amplitude of signal
signal= A_signal * sin(2*pi*f_signal*t);
subplot(2,2,1);
plot(t,signal);
title('Original Signal');
xlabel('time');
ylabel('signal');

%Noise Generation
SNR_dB=-20;
noise_power= var(signal)/(10^(SNR_dB/10));
noise= sqrt(noise_power)* randn(size(t));

%Add noise to signal
noisy_signal1= signal+noise;


%SNR = -20dB
subplot(2,2,2);
plot(t,noisy_signal1);
title('SNR -20dB');
xlabel('time');
ylabel('signal with AWGN');

%SNR = 0dB
SNR_dB = 0;
noisy_signal2= awgn(signal,SNR_dB);
subplot(2,2,3);
plot(t,noisy_signal2);
title('SNR 0dB');
xlabel('time');
ylabel('signal with AWGN');

%SNR = 20dB
SNR_dB = 20;
noisy_signal3= awgn(signal,SNR_dB);
subplot(2,2,4);
plot(t,noisy_signal3);
title('SNR 20dB');
xlabel('time');
ylabel('signal with AWGN');