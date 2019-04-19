function [x,fval] = invest1(mu,covar,E)
H=covar*2;
f=[];
A=[1,1,1;-mu];
b=[1,-E];
Aeq=[];
beq=[];
lb=[0;0;0];
[x,fval,exitflag]=quadprog(H,f,A,b,Aeq,beq,lb);
if exitflag<=0
    x(:)=Inf;
    fval=Inf;
end
end

