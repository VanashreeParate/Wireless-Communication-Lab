clc;
clear all;
close all;

%1. Representing vectors
A=[1 2 3]; B=[4 5 6];
disp('A=');
disp(A);
disp('B=');
disp(B);

%2. Magnitude of vector
mA= norm(A);
mA2=0;
for i= 1:3 
    mA2= mA2+ A(i)*A(i);
end
mA2=sqrt(mA2);
disp('Magnitude of vector A=');
disp(mA2);

%3. Angle made by vector with x-axis
angleR= atan2(5,4); angleD=angleR*(180/pi);
disp('Angle made by vector with x-axis is =');
disp(angleR);

%4. Dot Product
A1=[-2 5];
B1=[10,3];
dot(A1,B1);
C1=dot(A1,B1);
disp('Dot Product is =');
disp(C1);

% 5.Cross Product
A2=[1 2 7];
B2=[7 -2 4];
C2 = cross(A2,B2); 
disp('Cross Product is ='); 
disp(C2);

%6. Matrix in Matlab
M= [[pi exp(pi)];[0 -1]]; 
disp('Matrix M is ='); 
disp(M); 

%7. Transpose of Matrix
Mt= M';
disp('Tranpose of Matrix M is =');
disp(Mt); 

%8. Converting Matrix to column vector
Mc= M(:); 
disp('Column Vector of Matrix M is ='); 
disp(Mc);

%9. Multiplication of matrices
v=[1; 9];
X=M*v; disp('Multiplication of matrices M and V is =');
disp(X);