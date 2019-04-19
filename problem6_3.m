clear
data=[
    1.300, 	1.225, 	1.149; 
    1.103, 	1.290, 	1.260;
    1.216, 	1.216, 	1.419; 
    0.954, 	0.728, 	0.922; 
    0.929, 	1.144, 	1.169; 
    1.056, 	1.107, 	0.965; 
    1.038, 	1.321, 	1.133; 
    1.089, 	1.305, 	1.732; 
    1.090, 	1.195, 	1.021; 
    1.083, 	1.390, 	1.131; 
    1.035, 	0.928, 	1.006; 
    1.176, 	1.715, 	1.908
    ];
covar=cov(data);
mu=mean(data)-1;
[x0,var0]=invest1(mu,covar,0.15);

n=100;
Er=linspace(0.1,max(mu),n);
x1=zeros(n,3);
var1=zeros(n,1);
tic
for i=1:1:n
    [x1(i,:),var1(i)]=invest1(mu,covar,Er(i));
end
t1=toc;
plot(Er,x1(:,1),'linewidth',3);
hold
plot(Er,x1(:,2),'linewidth',3);
plot(Er,x1(:,3),'linewidth',3);
set(gca,'FontSize',32)
xlabel('期望收益')
ylabel('持有比例')
title('股票持有比例')
legend('股票A','股票B','股票C','Location','best')
set(gcf,'outerposition',get(0,'screensize'));
saveas(gcf,'11.png')
close

plot(Er,var1,'linewidth',3);
set(gca,'FontSize',32)
xlabel('期望收益')
ylabel('方差')
title('方差-期望收益曲线')
set(gcf,'outerposition',get(0,'screensize'));
saveas(gcf,'12.png')
close

[x2,var2]=invest2(mu,covar,0.15);
x3=zeros(n,4);
var3=zeros(n,1);
tic
for i=1:1:n
    [x3(i,:),var3(i)]=invest2(mu,covar,Er(i));
end
t2=toc;
plot(Er,x3(:,1),'linewidth',3);
hold
plot(Er,x3(:,2),'linewidth',3);
plot(Er,x3(:,3),'linewidth',3);
plot(Er,x3(:,4),'linewidth',3);
set(gca,'FontSize',32)
xlabel('期望收益')
ylabel('持有比例')
title('股票持有比例')
legend('股票A','股票B','股票C','国库券','Location','best')
set(gcf,'outerposition',get(0,'screensize'));
saveas(gcf,'21.png')
close
plot(Er,var1,'linewidth',3);
hold
plot(Er,var3,'linewidth',3);
legend('模型1','模型2','Location','best')
set(gca,'FontSize',32)
xlabel('期望收益')
ylabel('方差')
title('方差-期望收益曲线')
set(gcf,'outerposition',get(0,'screensize'));
saveas(gcf,'22.png')
close

[x4,var4]=invest3(mu,covar,0.15,0.01);
x5=zeros(51,3);
var5=zeros(51,1);
fee=linspace(0.001,0.05,51);
for i=1:1:51
    [x5(i,:),var5(i)]=invest3(mu,covar,0.15,fee(i));
end
plot(fee,x5(:,1),'linewidth',3);
hold
plot(fee,x5(:,2),'linewidth',3);
plot(fee,x5(:,3),'linewidth',3);
set(gca,'FontSize',32)
xlabel('交易费用')
ylabel('持有比例')
title('股票持有比例')
legend('股票A','股票B','股票C','Location','best')
set(gcf,'outerposition',get(0,'screensize'));
saveas(gcf,'31.png')
close
plot(fee,var5,'linewidth',3);
set(gca,'FontSize',32)
xlabel('交易费用')
ylabel('方差')
title('方差-交易费用曲线')
set(gcf,'outerposition',get(0,'screensize'));
saveas(gcf,'32.png')
close