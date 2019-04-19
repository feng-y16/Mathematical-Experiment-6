function [c,ceq,g,geq]=f2con3(x)
c=[
    x(1)*x(2)-x(1)-x(2)+1.5;
    -x(1)*x(2)-10
    ];
ceq=x(1)*x(2)*x(3)*x(4)-16;
if nargout > 2
    g=[        
        x(2)-1,-x(2);
        x(1)-1,-x(1);
        0,0;
        0,0
        ];
    geq=[
        x(2)*x(3)*x(4);
        x(1)*x(3)*x(4);
        x(1)*x(2)*x(4);
        x(1)*x(2)*x(3)
        ];
end