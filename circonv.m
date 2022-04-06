function yc=circonv(x1,x2,N)
%y:output sequences
%x1,x2:input sequences
%N:circulation length
 
if length(x1)>N
error( 'N must not be less than length of x1 ');
end
if length(x2)>N
error( 'N must not be less than length of x2 ');
end
%��������ж��������еĳ����Ƿ�С�� N
x1=[x1,zeros(1,N-length(x1))];  
%�������x1(n)ʹ�䳤��ΪN1+N2-1(����%h(n)�ĳ���Ϊ N1������ x(n)�ĳ���Ϊ N2)
x2=[x2,zeros(1,N-length(x2))];  
%������� x2(n)ʹ�䳤��Ϊ N1+N2-1
n=[0:1:N-1];
x2=x2(mod(-n,N)+1);  %ȡģ ��������x2((-n))N
H=zeros(N,N);
for n=1:1:N
    H(n,:)=cirshiftd(x2,n-1,N);  %�þ����k�� Ϊx2((k-1-n))N
end
yc=x1*H'; %����ķ�������ѭ�����




function y=cirshiftd(x,m,N)  
%ֱ��ʵ������x��ѭ����λ
%y=cirshiftd(x,m,N);
%x:����С��N����������
%m:ת�ƶ���
%N:Բ�γ���
%y:�����λ����
if length(x)>N
error('length of x must be less than N');
end
x=[x,zeros(1,N-length(x))];
n=[0:1:N-1];
y=x(mod(n-m,N)+1);




%���Ծ������
function y=myconv(x1,x2)
N1=length(x1);
M=length(x2);
L=N1+M-1;
for(n=1:L)
   y(n)=0;
   for(m=1:M)
      k=n-m+1;
      if(k>=1&k<=N1)
            y(n)=y(n)+x2(m)*x1(k);
      end
   end
end
