clear all;
close all;
clc; 

L=4;
Delay=[0,1,2,3]; 
Gains=[-20,-10,0,-10]; 

Gains_linear=10.^(Gains./10); 
Delay_spread=max(Delay)-min(Delay); 
disp("Delay Spread = ");
disp(Delay_spread);

Summ=sum(Delay.*Gains_linear);
gains_sum=sum(Gains_linear); 
Mean_Delay=Summ/gains_sum; 
disp("Mean Delay = ");
disp(Mean_Delay);

square_root_gains=sqrt(gains_sum); 
for i=1:5
new_array_delay=(Delay-Mean_Delay).^2; 
end
square_num=sqrt(sum(new_array_delay.*Gains_linear));
RMS=square_num/square_root_gains; 
disp("RMS Delay = ");
disp(RMS);

figure;
stem(Delay,Gains);
xlabel("Delay in us");
ylabel("Gains in dB"); 
title("PDP Plot");