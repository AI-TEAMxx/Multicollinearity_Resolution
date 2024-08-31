%建立符号变量a(发展系数)和b(灰作用量)
syms a b;
c = [a b]';

%原始数列 A
%类1 完成
%A = [5.59,5.96,6.19,7.6628,9.4125,9.417,10.78,12.54,12.498,14.13,16.9,19.37,20.15,29.5,22.5,23.168,23.51,24.97,24,23.656]
%类2 完成
A=[45.63,46.28,56.72,73.86,81.2,79.93,90.56,91.23,100.38,112.48,103.59,103.7332929,104.8480082,108.7107209,94.80990481,82.2874144,67.2512666,66.3,78.2,86.1]
%类3 完成
%A=[0.922146629,0.977663126,1.052,1.051981241,1.036637751,1.15,1.22,1.48,1.765,1.875,2.752,2.774,2.71,3.736,4.658,8.2,5.77,6.448479258,4.611817984,5.19]
%类4 完成
%A=[0.216017861,0.223186917,0.241009017,0.267527112,0.320969879,0.328451845,0.372546904,0.424540141,0.604263326,0.819539332,3.281639394,2.953308909,3.03726199,3.111203968,3.204859795,3.790052859,3.596748016,3.383227392,2.962294264,2.788360725]
%类5 完成
%A = [0.089679819,0.087810668,0.095615022,0.099370462,0.110941183,0.113682837,0.133136602,0.150519681,0.216122912,0.255093928,0.831448148,0.869872658,0.973710056,1.039200493,1.049346576,1.419848938,1.075842996,1.0420745,0.778343865,0.743568211];
%类6 完成
%A=[1.41,1.46,1.65,1.93,2.080971487,2.074819123,2.183732116,2.587722554,2.859846981,3.065004444,3.884715202,3.817983306,3.722164144,4.612145705,4.16321886,4.489624146,3.861011254,4,4.2,4.4]
%类7 完成
%A=[0.015079087,0.014913433,0.016988331,0.021816367,0.025648654,0.022387645,0.024409335,0.030791952,0.037276591,0.04508377,0.049023422,0.041447351,0.056753317,0.062526221,0.05843714,0.059094749,0.068502033,0.059767458,0.040195471,0.039265818]
%类8 完成
%A=[11.68,11.83,12.08,16.41,17.43876836,13.72852847,13.78606698,15.47267336,17.17660839,17.50532232,20.40454822,23.66615927,26.71413326,17.96756796,23.02627622,23.7720419,24.16556194,24.28,25.43,26.63]
%类9
%A=[13.11,14.12,15.39,17.35,22.16096251,23.93762057,26.75662214,30.72921542,30.99039926,32.46666877,49.92335695,50.22714132,59.15686006,69.6582254,74.11603713,72.41310482,66.22116437,66,42.87,46.2]
%类10
%A=[2.306647411,2.148604697,2.384856885,3.318695468,4.11406307,3.472547062,3.867385667,5.026494799,6.704954073,10.29663613,11.80378354,10.90720151,25.84318162,18.78284626,23.58790579,18.61421947,18.13222217,16.50877875,5.600106528,5.416198379]
%类11
%A=[2.905367411,2.73217484,3.126089892,4.304751389,4.730615712,1.809526824,1.688632737,1.949077956,4.394320656,3.86447704,6.64632836,4.551193372,8.791990746,12.68607866,12.6660874,8.948434763,10.59072518,12.63019527,14.68821413,13.94288801]
%类12
%A=[0.255102411,0.232437105,0.269905699,0.386905504,0.418700077,0.099253333,0.078801978,0.095934637,0.354380852,0.386859488,0.38073009,0.284171818,0.604711692,0.700517683,0.723711036,0.413759023,0.52220462,0.58628834,0.752331932,0.68634647]
%类13
%A=[14.05942903,15.04009571,16.31625624,20.68173148,20.63143884,21.53151168,23.65299918,29.17483206,31.93713677,42.21572284,60.92918686,61.90646093,59.75695771,63.65143524,63.29193078,61.43820562,62.6267397,59.4877348,60.45995801,66.35983664]
%类14
%A=[0.498366353,0.522964425,0.587825969,0.685737095,0.774751587,0.785341707,0.839558647,1.006298568,1.073341573,1.279617824,1.948208416,1.7821929,1.855451294,2.346077191,2.26054237,2.479415584,2.622523535,2.516606514,1.824713948,1.764246066]
%类15
%A=[0.460412332,0.477476148,0.535955651,0.643047789,0.712661726,0.702824212,0.757493485,0.91244272,1.005525085,1.131686515,1.292979764,1.255661537,1.415994375,1.649695821,1.533258455,1.644791283,1.482986392,1.433795494,1.182697644,1.223699395]
%类16
%A=[5.877959907,6.701304634,7.350286756,8.504183035,9.827454853,10.97312224,13.07354218,15.67541429,18.14234511,21.30108023,19.83317285,17.33066642,18.65018005,13.55423575,19.82264125,19.24372701,27.60059247,29.07773305,28.69685178,30.02650024]
n = length(A);
%对原始数列 A 做累加得到数列 B
B = cumsum(A);

%对数列 B 做紧邻均值生成
for i = 2:n
    C(i) = (B(i) + B(i - 1))/2; 
end
C(1) = [];

%构造数据矩阵 
B = [-C;ones(1,n-1)];
Y = A; Y(1) = []; Y = Y';

%使用最小二乘法计算参数 a(发展系数)和b(灰作用量)
c = inv(B*B')*B*Y;
c = c';
a = c(1); b = c(2);

%预测后续数据
F = []; F(1) = A(1);
for i = 2:(n+20)
    F(i) = (A(1)-b/a)/exp(a*(i-1))+ b/a;
end

%对数列 F 累减还原,得到预测出的数据
G = []; G(1) = A(1);
for i = 2:(n+20)
    G(i) = F(i) - F(i-1); %得到预测出来的数据
end

disp('预测数据为：');
G

%模型检验

H = G(1:20);
%计算残差序列
epsilon = A - H;

%法一：相对残差Q检验
%计算相对误差序列
delta = abs(epsilon./A);
%计算相对误差Q
disp('相对残差Q检验：')
Q = mean(delta)

%法二：方差比C检验
disp('方差比C检验：')
C = std(epsilon, 1)/std(A, 1)

%法三：小误差概率P检验
S1 = std(A, 1);
tmp = find(abs(epsilon - mean(epsilon))< 0.6745 * S1);
disp('小误差概率P检验：')
P = length(tmp)/n

%绘制曲线图
t1 = 2000:2019;
t2 = 2000:2039;

plot(t1, A,'ro'); hold on;
plot(t2, G, 'g-');
xlabel('年份'); ylabel('碳排放量/兆吨');
legend('1类实际碳排放量','1类预测碳排放量');
title('1类碳排放量增长曲线');
grid on;
%%
%建立符号变量a(发展系数)和b(灰作用量)
syms a b;
c = [a b]';

%原始数列 A
A = [20.15,29.5, 22.5078, 23.16796, 23.51, 24.96768, 24.0015, 23.65589519];
n = length(A);

%对原始数列 A 做累减得到数列 B
for i = 2:n
    H(i) = A(i) - A(i - 1);
end
H(1) = [];


%对原始数列 A 做紧邻均值生成
for i = 2:n
    C(i) = (A(i) + A(i-1))/2;
end
C(1) = [];

%构造数据矩阵 
D = [-C; C.^2];
Y = H; Y = Y';

%使用最小二乘法计算参数 a(发展系数)和b(灰作用量)
c = inv(D*D')*D*Y;
c = c';
a = c(1); b = c(2);

%得到预测出的数据
F = []; F(1) = A(1);
for i = 2:(n+n)
    F(i) = (a*A(1))/(b*A(1)+(a - b*A(1))*exp(a*(i-1)));
end

disp('预测数据为：');
F

%绘制曲线图
t1 = 0:n-1; 
t2 = 0:2*n-1;
plot(t1, A, 'ro'); hold on;
plot(t2, F);
xlabel('时间点均匀采样/5h'); ylabel('细菌培养液吸光度/OD600');
legend('实际数量','预测数量');
title('大肠杆菌培养S形增长曲线');
grid on;
%%
% 本程序主要用来计算根据灰色理论建立的模型的预测值。
% 应用的数学模型是 GM(1,1)。
% 原始数据的处理方法是一次累加法。
y=input('请输入数据 ');
n=length(y);
yy=ones(n,1);
yy(1)=y(1);
for i=2:n
    yy(i)=yy(i-1)+y(i);
end
B=ones(n-1,2);
for i=1:(n-1)
    B(i,1)=-(yy(i)+yy(i+1))/2;
    B(i,2)=1;
end
BT=B';
for j=1:n-1
    YN(j)=y(j+1);
end
YN=YN';
A=inv(BT*B)*BT*YN;
a=A(1);
u=A(2);
t=u/a;
i=1:n+2;
yys(i+1)=(y(1)-t).*exp(-a.*i)+t;
yys(1)=y(1);
for j=n+2:-1:2
    ys(j)=yys(j)-yys(j-1);
end
x=1:n;
xs=2:n+2;
yn=ys(2:n+2);
plot(x,y,'^r',xs,yn,'*-b');
det=0;

sum1=0;
sumpe=0;
for i=1:n
    sumpe=sumpe+y(i);
end
pe=sumpe/n;
for i=1:n;
    sum1=sum1+(y(i)-pe).^2;
end
s1=sqrt(sum1/n);
sumce=0;
for i=2:n
    sumce=sumce+(y(i)-yn(i));
end
ce=sumce/(n-1);
sum2=0;
for i=2:n;
    sum2=sum2+(y(i)-yn(i)-ce).^2;
end
s2=sqrt(sum2/(n-1));
c=(s2)/(s1);
disp(['后验差比值为：',num2str(c)]);
if c<0.35
    disp('系统预测精度好')
else if c<0.5
        disp('系统预测精度合格')
    else if c<0.65
            disp('系统预测精度勉强')
        else
            disp('系统预测精度不合格')
        end
    end
end

disp(['下个拟合值为 ',num2str(ys(n+1))]);
disp(['再下个拟合值为',num2str(ys(n+2))]);
%%
Y = [20.15,29.5, 22.5078, 23.16796, 23.51, 24.96768, 24.0015, 23.65589519];
plot(Y)
y_h_adf = adftest(Y)
y_h_kpss = kpsstest(Y)
%%
clear; clc
%小白专用，"*********《需要自己输入》**********"仅在有这种注释的地方改成自己的数据即可，一共有4个地方
DD=[20.15,29.5, 22.5078, 23.16796, 23.51, 24.96768, 24.0015, 23.65589519];%这里输入自己的单序列数据，要求行向量*********《需要自己输入》**********
P=DD(1:8)';
N=length(P);
n=6;%自己选取训练集个数*********《需要自己输入》**********
F = P(1:n+2);
%----------------------由于时间序列有不平稳趋势，进行两次差分运算，消除趋势性----------------------% 
 
Yt=[diff(P,1)];
L=diff(P,2);%全体，比原始数据少2个，因为做了差分 
Y=L(1:n); %输入
a=length(L)-length(Y);%单步预测步数
aa=a;%多步预测步数
%画图
% figure; 
% plot(P); 
% title('原数据序列图'); 
% hold on;   
% figure;
% plot(Y,'*'); 
% title('两次差分后的序列图和原数对比图'); 
%--------------------------------------对数据标准化处理----------------------------------------------% 
%处理的算法 : (data - 期望)/方差
Ux=sum(Y)/n  ;                         % 求序列均值 
yt=Y-Ux; 
b=0; 
for i=1:n 
   b=yt(i)^2/n+b; 
end 
 v=sqrt(b);                          % 求序列方差 
% Y=yt/v;                            % 标准化处理公式  
Y=zscore(Y);
f=F(1:n);
t=1:n;
%画图
% figure; 
% plot(t,f,t,Y,'r') 
% title('原始数据和标准化处理后对比图'); 
% xlabel('时间t'),ylabel('油价y'); 
% legend('原始数据 F ','标准化后数据Y ',"Location","best");   
%--------------------------------------对数据标准化处理----------------------------------------------% 
 
 
%------------------------检验预处理后的数据是否符合AR建模要求，计算自相关和偏相关系数---------------% 
 
%---------------------------------------计算自相关系数-----------------------------------% 
R0=0;
for i=1:n  
     R0=Y(i)^2/n+R0;   %标准化处理后的数据的方差
end 
 
for k=1:20 
    
    %R  协方差   
    R(k)=0; 
    for i=k+1:n
        R(k)=Y(i)*Y(i-k)/n+R(k);   
    end 
end 
x=R/R0       ;               %自相关系数x = 协方差/方差
 
%画图
% figure; 
% plot(x) 
% title('自相关系数分析图');  
%-----------------------------------计算自相关系数-------------------------------------% 
%-----------------------解Y-W方程，其系数矩阵是Toeplitz矩阵(多普里兹矩阵)。求得偏相关函数X-------------------
X1=x(1);xx(1,1)=1;X(1,1)=x(1);B(1,1)=x(1);
K=0;T=X1; 
for t=2:n 
    at=Y(t)-T(1)*Y(t-1); 
    K=(at)^2+K;  
end                         
  U(1)=K/(n-1)   ;                      % 1阶模型残差方差            
   
for i =1:19
B(i+1,1)=x(i+1);
xx(1,i+1)=x(i);
A=toeplitz(xx);
XX=A\B;     %x=a\b是方程a*x =b的解
XXX=XX(i+1);
X(1,i+1)=XXX;
 
K=0;T=XX;
   for t=i+2:n                                                       
       r=0;  
       for j=1:i+1 
           r=T(j)*Y(t-j)+r; 
       end 
       at= Y(t)-r; 
       K=(at)^2+K;  
    end 
    U(i+1)=K/(n-i+1); %计算20阶以内的模型残差方差
end
 
%-----------------------------------解Y-W方程，得偏相关函数X-------------------------------------% 
figure;  
plot(X); 
title('偏相关函数图');%自己要根据图先判断阶次  
q=2;%猜测阶数,通过看上面偏相关图,*********《需要自己输入》**********
%-----根据偏相关函数截尾性，初判模型阶次为5。用最小二乘法估计参数,计算20阶以内的模型残差方差和AIC值，应用AIC准则为模型定阶--% 
S(1,1)=R0;
for i = 1:q-1
    S(1,i+1)=R(i);
end 
   G=toeplitz(S); 
   %inv(G)返回G的反函数
   W=inv(G)*[R(1:q)]'    ;                  % 参数W(i) 与X5相同  G*W = [R(1:5)]'
              
    U=20*U ;
    for i=1:20 
     AIC2(i)=n*log(U(i))+2*(i)    ;  
    end
% 比如AIC2值为：172.6632  165.4660  153.2087  145.1442  140.7898  141.6824  142.9944  144.5601  146.3067  148.7036 
 
    
%-----------------取使AIC值为最小值的阶次，判断模型阶次为5。用最小二乘法估计参数--------------------% 
q=2;%确定阶数 ，通过看AIC2值最小的位置,*********《需要自己输入》********** 
%------------------检验{at}是否为白噪声。求{at}的自相关系数，看其是否趋近于零-----------------------% 
   C=0;K=0; 
 for t=q+2:n 
     at=Y(t)+Y(q+1);
     for i=1:q
     at=-W(i)*Y(t-i)-W(i)*Y(q-i+1)+at;
     end
 
     at1=Y(t-1);
     for i=1:q
         at1=-W(i)*Y(t-i-1)+at1;
     end
     %at1=Y(t-1)-W(1)*Y(t-2)-W(2)*Y(t-3)-W(3)*Y(t-4)-W(4)*Y(t-5)-W(5)*Y(t-6); 
     C=at*at1+C; 
     K=(at)^2+K;  
end 
 p=C/K       ;       %若p接近于零，则{at}可看作是白噪声                  
 %--------------------------------{at}的自相关系数,趋近于零，模型适用---------% 
  
 %------------AR(5)模型方程为-----------------------------------------------% 
  % X(t)=W(1)*X(t-1)-W(2)*X(t-2)-W(3)*X(t-3)-W(4)*X(t-4)-W(5)*X(t-5)+at 
  
  
%------------------------------------------后六年的数据 进行预测和效果检验------------------------------------% 
  %注意注意注意a为测试集的元素个数
%-----------------------------单步预测  预测当前时刻后的a个数据---------------% 
 
XT=[L(n-q+1:n+a)];  
 for t=q+1:q+a 
    m(t)=0; 
    for i=1:q 
       m(t)=W(i)*XT(t-i)+m(t);   
    end 
 end 
 
 m=m(q+1:q+a); 
   
 %-------------预测值进行反处理---------------% 
 for i =1:a
     m(i)=Yt(n+i+1)+m(i); %一次反差分
     z1(i)=P(n+i+1)+m(i);%二次反差分 
 end
%   z1          ;                                     % 单步预测的向后6个预测值
 
 %---------------------------绘制数据模型逼近曲线----------------------------% 
 for  t=q+1:n 
    r=0;  
    for i=1:q 
       r=W(i)*Y(t-i)+r; 
    end 
    at= Y(t)-r;     
end  
 
figure; 
for t=q+1:n 
   y(t)=0; 
   for i=1:q 
      y(t)=W(i)*Y(t-i)+y(t);   
   end 
   y(t)=y(t)+at; 
   y(t)=Yt(t+1)-y(t); 
   y(t)=P(t+1)-y(t); %反差分的过程
end 
plot(y,'r.');                    % 样本数据模型逼近曲线 
hold on; 
plot(n+2:n+a+1,z1,'r-*');  %向后a布预测
hold on; 
plot(P,"--");                     % 原样本曲线 
title('AR(q)模型样本逼近预测曲线'); 
legend("训练样本预测值","测试集预测值","真实值","Location","best");
 
 
%-------------------------检测单步预测误差
D_a=P(n+2:end-1);
 for i=1:a                                          
     e6_a(i)=D_a(i)-z1(i);  
     PE6_a(i)= (e6_a(i)/D_a(i))*100;                                                         
 end  
 e6_a;                                                % 多步预测的绝对误差 
  PE6_a;                                              % 多步预测的相对误差 
 1-abs(PE6_a);                                          % 准确率 
    
%------多步预测平均绝对误差                                           
mae6_a=sum(abs(e6_a)) /6 ;  
   
%------多步预测平均绝对百分比误差                                           
MAPE6_a=sum(abs(PE6_a))/6 
 
%------绘制预测结果和实际值的比较图 
figure; 
plot(1:a,D_a,'-+')                      
hold on; 
plot(z1,'r-*'); 
title('单步，向后a步预测值和实际值对比图'); 
legend("真实值","预测值","Location","best");
hold off;
%-----------------------------绘制数据模型逼近曲线--------------------------%  
   
%-------------------------预测误差分析（多步）------------------------%  
%----------------------------------多步预测 目的是向后aa步预测--------------% 
Z(1)=0;Xt=0;
for i =1:q
    Xt(1,i)=Y(n-q+i);
end
%Xt=[ Y(n-4) Y(n-3) Y(n-2) Y(n-1) Y(n)];           %取当前时刻之前的q个数据 
for i =1:q
    Z(1)=W(i)*Xt(q-i+1)+Z(1);
end
%Z(1)=W(1)*Xt(5)+W(2)*Xt(4)+W(3)*Xt(3)-W(4)*Xt(2)-W(5)*Xt(1)       ;                           
%------求向前l步的预测值  
  %预测步数小于q时 
 for l=2:q 
     K(l)=0;  
    for i=1:l-1   
       K(l)=W(i)*Z(l-i)+K(l);  
    end 
    G(l)=0; 
    for j=l:q 
        G(l)=W(j)*Xt(q+l-j)+G(l); 
    end 
    Z(l)=K(l)+G(l); 
 end 
 %预测步数大于q时（向前aa步预测） 
  for l=q+1:aa 
      K(l)=0;  
      for i=1:q 
          K(l)=W(i)*Z(l-i)+K(l);  
      end 
      Z(l)=K(l); 
  end 
 
 %----预测值进行反标准化处理 
 r=Z*v+Ux            ;       
 r(1)=Yt(n+2)+r(1);           %一次反差分 
 z(1)=P(n+2)+r(1)  ;           %二次反差分 
 for i=2:aa 
     r(i)=r(i-1)+r(i); 
     z(i)=z(i-1)+r(i)   ;
 end 

%---------------------------- 预测误差分析 ------------------------------% 
%-------计算绝对误差和相对误差  
D=P(n+2:end-1);
 for i=1:aa                                          
     e6(i)=D(i)-z(i);  
     PE6(i)= (e6(i)/D(i))*100;                                                         
 end  
 e6      ;                                          % 多步预测的绝对误差
  PE6    ;                                          % 多步预测的相对误差 
 1-abs(PE6)  ;                                        % 准确率 
    
%------多步预测平均绝对误差                                           
mae6=sum(abs(e6)) /6  ; 
   
%------多步预测平均绝对百分比误差                                           
MAPE6=sum(abs(PE6))/6 
 
%------绘制预测结果和实际值的比较图 
figure; 
plot(1:aa,D,'-+')                      
hold on; 
plot(z,'r-*'); 
title('多步，向后aa步预测值和实际值对比图'); 
legend("真实值","预测值","Location","best");
hold off;
%%
18.65018005, 13.55423575,19.82264125,19.24372701,27.60059247,29.07773305,28.69685178,30.02650024