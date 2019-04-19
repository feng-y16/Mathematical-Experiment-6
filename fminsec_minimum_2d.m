function [res_fminsec,t] = fminsec_minimum_2d(f,low,high,n,opt)
xi=linspace(low,high,n);
yi=linspace(low,high,n);
res_fminsec=zeros(n^2,3);
tic
for i=1:1:n
    for j=1:1:n
        [res_fminsec((i-1)*n+j,1:2),res_fminsec((i-1)*n+j,3),ef]=fminsearch(f,[xi(i),yi(j)],opt);
        if ef<=0
            ef
            %fprintf("error!\n");
            res_fminsec((i-1)*n+j,1:2)=[Inf,Inf];
            res_fminsec((i-1)*n+j,3)=Inf;
        end
    end
end
t=toc;
end