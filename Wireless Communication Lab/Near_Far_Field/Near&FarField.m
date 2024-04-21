close all;
clear all;
clc;

df=200;
pt = 40;
gt = 1;
gr = 1;
fc = 900000000;
lambda = 300000000/fc;


baseX=500;
baseY=500;

%20 locations
row = randperm(1000, 20);
column = randperm(1000, 20);

%cirlce of r=df around base station
theta=0:0.01:2*pi; 
xp=df*cos(theta);
yp=df*sin(theta);

distance = sqrt( (row-baseX).^2 + (column-baseY).^2 );

nearfield = distance < df;
farfield = distance >= df;

scatter(baseX, baseY, 'ro', 'filled'); %base
hold on;
scatter(row(nearfield), column(nearfield), 'go', 'filled');
scatter(row(farfield), column(farfield), 'ko');
plot(500+xp,500+yp,'k'); %cirlce
legend('Tower', 'Devices in nearfeild', 'Devices in farfield');
hold off;

pr = zeros(1,20);
pr_dB = zeros(1,20);

for i=1:20
    if(distance(i) < df)
        pr(i) = 0;
    else
        pr(i) = pt*gt*gr*( lambda / (4*pi*distance(i)) )^2;
        pr_dB(i) = 10 * ( log(pr(i)) );
    end
end
disp(pr_dB);