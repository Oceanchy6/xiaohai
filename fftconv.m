function yk=fftconv(x1,x2,N)
     Xk1=fft(x1,N);
     XK2=fft(x2,N);
     YK=Xk1.*XK2; 
     yk=ifft(YK,N);

%ֱ�ӵ��ú���fftconv ���ɷ�����Բ���
%���磺 fftconv(x,h,N0)