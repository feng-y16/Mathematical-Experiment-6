function [f,g]=f12(x)
c1=0.7;
c2=0.73;
a1=[4;4];
a2=[2.5;3.8];
x=x';
f=-1/((x-a1)'*(x-a1)+c1)-1/((x-a2)'*(x-a2)+c2);
if nargout > 1
   g(1)=2*(x(1)-a1(1))/((x-a1)'*(x-a1)+c1)^2+2*(x(1)-a2(1))/((x-a2)'*(x-a2)+c2)^2;
   g(2)=2*(x(2)-a1(2))/((x-a1)'*(x-a1)+c1)^2+2*(x(2)-a2(2))/((x-a2)'*(x-a2)+c2)^2;
end