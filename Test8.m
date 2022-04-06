x=[1 2 3 4 5];  %���� x(n)
h=[1 2 1 2];  %���� h(n)
N=5;    %x����
M=4;   %h����

 
%�ú��� conv �������Ծ��
y1=conv(x,h);  
ny1=[0:length(y1)-1];


%���巨�����Ծ��
L=N+M-1;
for(n=1:L)
    y(n)=0;
  for(m=1:M)
    k=n-m+1;
     if(k>=1&k<=N)
            y(n)=y(n)+h(m)*x(k);
     end
  end
end
ny=[0:length(y)-1];

 
%% �ú��� circonv ����Բ���
N0=5;   %�������
N1=6;
N2=8;
N3=10;
 
y2=circonv(x,h,N0);  %�ú��� circonv ���� N0 ��ѭ�����
ny2=[0:length(y2)-1];
y3=circonv(x,h,N1);  %�ú��� circonv ���� N1 ��ѭ�����
ny3=[0:length(y3)-1];
y4=circonv(x,h,N2);  %�ú��� circonv ���� N1 ��ѭ�����
ny4=[0:length(y4)-1];
y5=circonv(x,h,N3);  %�ú��� circonv ���� N1 ��ѭ�����
ny5=[0:length(y5)-1];
 
%conv���Ծ��
subplot(3,2,1);
stem(ny1,y1,'.k');
title('conv���Ծ��');
xlabel('n');
ylabel('y1(n)');
grid on;

%���巨���Ծ��
subplot(3,2,2);
stem(ny,y,'.k');
title('�������Ծ��');
xlabel('n');
ylabel('y(n)');
grid on;

 
%Բ�ܾ��
subplot(3,2,3);
stem(ny2,y2,'.k');
title('5��ѭ�����');
xlabel('n');
ylabel('y2(n)');
grid on;
 
subplot(3,2,4);
stem(ny3,y3,'.k');
title('6��ѭ�����');
xlabel('n');
ylabel('y3(n)');
grid on;
 
subplot(3,2,5);
stem(ny4,y4,'.k');
title('8��ѭ�����');
xlabel('n');
ylabel('y4(n)');
grid on;
 
subplot(3,2,6);
stem(ny5,y5,'.k');
title('10��ѭ�����');
xlabel('n');
ylabel('y5(n)');
grid on;