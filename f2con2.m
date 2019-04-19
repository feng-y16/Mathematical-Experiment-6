function [c,ceq,g,geq]=f2con2(x)
c=[
    x(1)*x(2)-x(1)-x(2)+1.5;
    -x(1)*x(2)-10;
    -x(1)*x(2)*x(3)*x(4)-100;
    x(1)*x(2)*x(3)*x(4)-100
    ];
ceq=[];
if nargout > 2
    g=[        
        x(2)-1,-x(2),-x(2)*x(3)*x(4),x(2)*x(3)*x(4);
        x(1)-1,-x(1),-x(1)*x(3)*x(4),x(1)*x(3)*x(4);
        0,0,-x(1)*x(2)*x(4),x(1)*x(2)*x(4);
        0,0,-x(1)*x(2)*x(3),x(1)*x(2)*x(3)
        ];
    geq=[];
end
