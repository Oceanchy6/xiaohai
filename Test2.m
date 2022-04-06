%ʵ�����ʱ�������Ƶ�����
%ʵ�����ݼ�����
%����һ
% Fs=1000Hz
Tp=64/1000;%�۲�ʱ�� Tp=64 ΢��

Fs=1000; T=1/Fs; 
M=floor(Tp*Fs); n=01:M-1; 
A=444.128; alph=pi*50*2^0.5; omega=pi*50*2^0.5; 
xnt=A*exp(-alph*n*T).*sin(omega*n*T); 
Xk=T*fft(xnt,M);%M �� FFT[xnt)] 
yn='xa(nT)';subplot(3,2,1); 
stem(n,xnt,'.');xlabel('n'); ylabel('xa(nT) '); 
box on;%��ʾ������ͼ�������ܵı߿�.
title('(a) Fs=1000Hz'); 
k=0:M-1; fk=k/Tp; 
subplot(3,2,2); plot(fk,abs(Xk)); 
title('(a) T*FT[xa(nT)],Fs=1000Hz'); 
xlabel('f(Hz)'); ylabel(' ���� '); 
axis([0,Fs,0,1.2*max(abs(Xk))]);


%================================= 
% Fs=300Hz 
Tp=64/1000;%�۲�ʱ�� Tp=64 ΢��
 
Fs=300; T=1/Fs; 
M=floor(Tp*Fs);n=0:M-1; 
A=444.128; alph=pi*50*2^0.5; omega=pi*50*2^0.5; 
xnt=A*exp(-alph*n*T).*sin(omega*n*T); 
Xk=T*fft(xnt,M);%M �� FFT[xnt)] 
yn='xa(nT)';
subplot(3,2,3); 
stem(n,xnt,'.');xlabel('n'); ylabel('xa(nT) '); 
box on; title('(b) Fs=300Hz'); 
k=0:M-1; fk=k/Tp; 
subplot(3,2,4); plot(fk,abs(Xk)); 
title('(b) T*FT[xa(nT)],Fs=300Hz'); 
xlabel('f(Hz)'); ylabel(' ���� '); 
axis([0,Fs,0,1.2*max(abs(Xk))]);

%Fs=200Hz 
Tp=64/1000;%�۲�ʱ�� Tp=64 ΢��
 
Fs=200; T=1/Fs; 
M=floor(Tp*Fs); n=0:M-1; 
A=444.128; alph=pi*50*2^0.5; omega=pi*50*2^0.5; 
xnt=A*exp(-alph*n*T).*sin(omega*n*T); 
Xk=T*fft(xnt,M);%M �� FFT[xnt)] 
yn='xa(nT)';
subplot(3,2,5); 
stem(n,xnt,'.');xlabel('n'); ylabel('xa(nT) '); 
box on; title('(c) Fs=200Hz'); 
k=0:M-1; fk=k/Tp; 
subplot(3,2,6); plot(fk,abs(Xk)); 
title('(c) T*FT[xa(nT)],Fs=200Hz'); 
xlabel('f(Hz)'); ylabel(' ���� '); 
axis([0,Fs,0,1.2*max(abs(Xk))]);