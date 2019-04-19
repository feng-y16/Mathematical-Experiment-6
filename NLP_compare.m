function [x,f,t] = NLP_compare(opt)
lb=[-10;-10;-10;-10];
ub=[10;10;10;10];
A=[1,1,0,0];
b=0;
tic
x=zeros(6,4);
f=zeros(6,1);
x0=[3,-1,3,-1];
[x(1,:),f(1),ef1]=fmincon(@f2fun,x0,[],[],[],[],lb,ub,[],opt);
if ef1<=0
    x(1,:)=Inf;
    f(1)=Inf;
end
x0=[3,1,3,1];
[x(2,:),f(2),ef2]=fmincon(@f2fun,x0,[],[],[],[],lb,ub,[],opt);
if ef2<=0
    x(2,:)=Inf;
    f(2)=Inf;
end
x0=[3,-1,3,-1];
[x(3,:),f(3),ef1]=fmincon(@f2fun,x0,[],[],[],[],lb,ub,@f2con2,opt);
if ef1<=0
    x(3,:)=Inf;
    f(3)=Inf;
end
x0=[3,1,3,1];
[x(4,:),f(4),ef2]=fmincon(@f2fun,x0,[],[],[],[],lb,ub,@f2con2,opt);
if ef2<=0
    x(4,:)=Inf;
    f(4)=Inf;
end
x0=[3,-1,3,-1];
[x(5,:),f(5),ef1]=fmincon(@f2fun,x0,[],[],[],[],lb,ub,@f2con3,opt);
if ef1<=0
    x(5,:)=Inf;
    f(5)=Inf;
end
x0=[3,1,3,1];
[x(6,:),f(6),ef2]=fmincon(@f2fun,x0,[],[],A,b,lb,ub,@f2con3,opt);
if ef2<=0
    x(6,:)=Inf;
    f(6)=Inf;
end
t=toc;
end

