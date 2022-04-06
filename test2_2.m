%Ƶ�����������֤���� exp2b.m 
M=27;N=32;n=0:M; 
%���� M �����ǲ����� x(n) 
xa=0:floor(M/2); xb= ceil(M/2)-1:-1:0; xn=[xa,xb]; 
Xk=fft(xn,1024);%1024 �� FFT[x(n)], ���ڽ������� x(n)�� TF 
X32k=fft(xn,32);%32 �� FFT[x(n)] 
x32n=ifft(X32k);%32 �� IFFT[X32(k)]�õ� x32(n) 
X16k=X32k(1:2:N);%�����ȡ X32k �õ� X16(K) 
x16n=ifft(X16k,N/2); %16 �� IFFT[X16(k)]�õ� x16(n) 
subplot(3,2,2);stem(n,xn,'.');box on 
title('(b) ���ǲ����� x(n)');xlabel('n');ylabel('x(n)');axis([0,32,0,20]) 
k=0:1023;wk=2*k/1024; % 
subplot(3,2,1);plot(wk,abs(Xk));title('(a)FT[x(n)]'); 
xlabel('\omega/\pi');ylabel('|X(e^j^\omega)|');axis([0,1,0,200]) 
k=0:N/2-1; 
subplot(3,2,3);stem(k,abs(X16k),'.');box on 
title('(c) 16 ��Ƶ����� ');xlabel('k');ylabel('|X_1_6(k)|');axis([0,8,0,200]) 
n1=0:N/2-1; 
subplot(3,2,4);stem(n1,x16n,'.');box on 
title('(d) 16 �� IDFT[X_1_6(k)]');xlabel('n');ylabel('x_1_6(n)');axis([0,32,0,20]) 
k=0:N-1; 
subplot(3,2,5);stem(k,abs(X32k),'.');box on 
title('(e) 32 ��Ƶ����� ');xlabel('k');ylabel('|X_3_2(k)|');axis([0,16,0,200]) 
n1=0:N-1; 
subplot(3,2,6);stem(n1,x32n,'.');box on 
title('(f) 32 �� IDFT[X_3_2(k)]');xlabel('n');ylabel('x_3_2(n)');axis([0,32,0,20]) 
%xlabel('n' );ylabel(yn); 
axis([0,n(end),min(xn),1.2*max(xn)]);