clear
low=-5;
high=5;
n=5;
opt0=optimset('Disp','off','MaxFunEvals',10000);
opt1=optimset('Disp','off','HessUpdate','bfgs','GradObj','on','MaxFunEvals',10000);
opt2=optimset('Disp','off','HessUpdate','dfp','GradObj','on','MaxFunEvals',10000);
opt3=optimset('Disp','off','HessUpdate','steepdesc','GradObj','on','MaxFunEvals',10000);
opt4=optimset('Disp','off','HessUpdate','bfgs','GradObj','off','MaxFunEvals',10000);
opt5=optimset('Disp','off','Algorithm','trust-region','MaxFunEvals',10000);

[res_fminsec1,t10] = fminsec_minimum_2d(@f11,low,high,n,opt0);
[res_fminunc11,t11] = fminunc_minimum_2d(@f11,low,high,n,opt1);
[res_fminunc12,t12] = fminunc_minimum_2d(@f11,low,high,n,opt2);
[res_fminunc13,t13] = fminunc_minimum_2d(@f11,low,high,n,opt3);
[res_fminunc14,t14] = fminunc_minimum_2d(@f11,low,high,n,opt4);
[res_fminunc15,t15] = fminunc_minimum_2d(@f11,low,high,n,opt5);

[res_fminsec2,t20] = fminsec_minimum_2d(@f12,low,high,n,opt0);
[res_fminunc21,t21] = fminunc_minimum_2d(@f12,low,high,n,opt1);
[res_fminunc22,t22] = fminunc_minimum_2d(@f12,low,high,n,opt2);
[res_fminunc23,t23] = fminunc_minimum_2d(@f12,low,high,n,opt3);
[res_fminunc24,t24] = fminunc_minimum_2d(@f12,low,high,n,opt4);
[res_fminunc25,t25] = fminunc_minimum_2d(@f12,low,high,n,opt5);

% max(max(abs((res_fminunc21(:,1:2)-res_fminsec2(:,1:2)))))
% max(max(abs((res_fminunc21(:,1:2)-res_fminunc22(:,1:2)))))
% max(max(abs((res_fminunc21(:,1:2)-res_fminunc23(:,1:2)))))
% max(max(abs((res_fminunc21(:,1:2)-res_fminunc24(:,1:2)))))
% max(max(abs((res_fminunc21(:,1:2)-res_fminunc25(:,1:2)))))

