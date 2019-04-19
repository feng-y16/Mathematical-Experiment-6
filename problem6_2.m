clear
opt1=optimoptions('fmincon','Display','off','Algorithm','interior-point','MaxFunEvals',20000,'MaxIter',3000);
%opt2=optimoptions('fmincon','Display','off','Algorithm','trust-region-reflective','MaxFunEvals',20000,'MaxIter',3000);
opt3=optimoptions('fmincon','Display','off','Algorithm','sqp','MaxFunEvals',20000,'MaxIter',3000);
opt4=optimoptions('fmincon','Display','off','Algorithm','active-set','MaxFunEvals',20000,'MaxIter',3000);
opt5=optimoptions(opt1,'GradObj','on','GradConstr','on','SpecifyObjectiveGradient',true);
%opt6=optimoptions(opt2,'GradObj','on','GradConstr','on','SpecifyObjectiveGradient',true);
opt7=optimoptions(opt3,'GradObj','on','GradConstr','on','SpecifyObjectiveGradient',true);
opt8=optimoptions(opt4,'GradObj','on','GradConstr','on','SpecifyObjectiveGradient',true);

[x1,f1,t1]=NLP_compare(opt1);
%[x2,f2,t2]=NLP_compare(opt2);
[x3,f3,t3]=NLP_compare(opt3);
[x4,f4,t4]=NLP_compare(opt4);
[x5,f5,t5]=NLP_compare(opt5);
%[x6,f6,t6]=NLP_compare(opt6);
[x7,f7,t7]=NLP_compare(opt7);
[x8,f8,t8]=NLP_compare(opt8);