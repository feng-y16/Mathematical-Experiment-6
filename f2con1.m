function [c,ceq,g,geq]=f2con1(x)
c=[
    -x(1)-10;x(1)-10;
    -x(2)-10;x(2)-10;
    -x(3)-10;x(3)-10;
    -x(4)-10;x(4)-10;
    ];
ceq=[];
if nargout > 2
    g=[
        -1,1,0,0,0,0,0,0;
        0,0,-1,1,0,0,0,0;
        0,0,0,0,-1,1,0,0;
        0,0,0,0,0,0,-1,1
        ];
    geq=[];
end