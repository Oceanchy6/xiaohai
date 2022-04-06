xn=[ones(1,9),zeros(1,91)];
n=[1:64,zeros(1,36)];
R21=[ones(1,64),zeros(1,36)];
hn=(0.9).^n.*R21;


%�ú��� conv �������Ծ��
y=conv(xn,hn);  
n=0:length(y)-1;
subplot(1,3,1);
stem(n,y,'.k');
title('���Ծ��');
xlabel('n');
ylabel('y');
grid on;


N1=64;
N2=128;

Xk1=fft(xn,N1);
Hk1=fft(hn,N1);
YK1=Xk1.*Hk1; 
yk1=ifft(YK1,N1);
n=0:length(yk1)-1;
subplot(1,3,2);
stem(n,yk1,'.k');
title('FFTʵ��64��Բ���');
xlabel('n');
ylabel('yn1');
grid on;


Xk2=fft(xn,N2);
Hk2=fft(hn,N2);
YK2=Xk2.*Hk2; 
yk2=ifft(YK2,N2);
n=0:length(yk2)-1;
subplot(1,3,3);
stem(n,yk2,'.k');
title('FFTʵ��128��Բ���');
xlabel('n');
ylabel('yn2');
grid on;
%ע��Ҳ���Ե��ú���fftconv(xn,hn,N1);fftconv(xn,hn,N2)