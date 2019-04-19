function [x,fval] = invest2(mu,covar,E)
H=zeros(4,4);
H(1:3,1:3)=covar*2;
f=[];
A=[1,1,1,1;-mu,-0.05];
b=[1,-E];
Aeq=[];
beq=[];
lb=[0;0;0;0];
[x,fval,exitflag]=quadprog(H,f,A,b,Aeq,beq,lb);
if exitflag<=0
    x(:)=Inf;
    fval=Inf;
end
end