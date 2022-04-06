x=[1 2 3 4 5];  %���� x(n)
h=[1 2 1 2];  %���� h(n)

N0=5;   %�������
N1=6;
N2=8;
N3=10;

y1=conv(x,h);
y2=circonv(x,h,N0);
y3=circonv(x,h,N1);  
y4=circonv(x,h,N2);
y5=circonv(x,h,N3);



%conv���Ծ��
n=0:length(y1)-1;
subplot(5,1,1);
stem(n,y1,'.');
title('conv���Ծ��');
xlabel('n');
ylabel('y1(n)');
grid on;


%5��Բ���
n=0:length(y2)-1;
subplot(5,1,2);
stem(n,y2,'.');
title('5��Բ���');
xlabel('n');
ylabel('y2(n)');
grid on;


%6��Բ���
n=0:length(y3)-1;
subplot(5,1,3);
stem(n,y3,'.');
title('6��Բ���');
xlabel('n');
ylabel('y3(n)');
grid on;

%8��Բ���
n=0:length(y4)-1;
subplot(5,1,4);
stem(n,y4,'.');
title('8��Բ���');
xlabel('n');
ylabel('y4(n)');
grid on;

%10��Բ���
n=0:length(y4)-1;
subplot(5,1,5);
stem(n,y4,'.');
title('10��Բ���');
xlabel('n');
ylabel('y4(n)');
grid on;