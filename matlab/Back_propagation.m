function [w12,w23,b2,b3] = Back_propagation(Y,w12,w23,b2,b3,t,n)

for j = 1:10000
C=0;
dw12=0;
dw23=0;
db2=0;
db3=0;

for i=1:4				%loop for sample data=4
    %input -> hidden parameter
    X = Y(:,i);				%insert input column by column
    z2 = w12 * X + b2;			%input weight for hidden layer
    a2= 1./(1+exp(-z2));		%output for hidden layer
    da2 = (1-a2).*a2;			%differentiation of a2 (differentiation of sigmoid)
    
    %hidden -> output parameter
    z3 = w23 * a2 + b3;			%input weight for output layer
    a3= 1./(1+exp(-z3));		%output for output layer
    da3 = (1-a3).*a3;			%differentiation of a3 (differentiation of sigmoid)
    
    %learning process of backpropagation
    %Error determination
    tx=t(:,i);
    
    Q=sum((tx-a3).^2)/2;
    C = C + Q;				%square error
    
    s3 = (a3-tx) .* da3;		%error funtion for output layer
    s2 = (w23.' * s3).*da2;		%error funtion for hidden layer
    
    %Derivation of Cost funtion 
    o=(X * (s2).').';
    dw12 = dw12 +o ;			%sig(CT)/sig(w12)=sum(sig(C)/sig(w12))
    o=(a2 * (s3).').';
    dw23 = dw23 + o;			%sig(CT)/sig(w23)=sum(sig(C)/sig(w23))
    db2 = db2 + s2;			%sig(CT)/sig(b2)=sum(sig(C)/sig(b2))
    db3 = db3 + s3;			%sig(CT)/sig(b3)=sum(sig(C)/sig(b3))
end
%fprintf('%dth learning C = %g\n',j,C);
w12 = w12 - n * dw12;
w23 = w23 - n * dw23;
b2 = b2 - n * db2;
b3 = b3 - n * db3;
end


%Result's display
for i=1:4				
    X = Y(:,i);				
    z2 = w12 * X + b2;			
    a2= 1./(1+exp(-z2));		
    
    z3 = w23 * a2 + b3;			
    a3= 1./(1+exp(-z3))			
 end
