function squarnew(n)
A=[];
X=[];
if n/2==ceil(n/2)   %耞琌琌案计
    for jj=0:(n/2-1)
        for ii=1:(n-jj*2)
            A(n-jj,ii+jj)=(n-2*jj)^2+1-ii;
        end
        for ii=1:(n-1-jj*2)
            A(n-ii,n)=n^2-(n-1)-ii;
            if jj>=1
                A(n-ii-jj,n-jj)=(n-2*jj)^2-(n-3-(jj-1)*2)-ii;
            end
        end
        for ii=1:(n-1-jj*2)
            A(1,n-ii)=n^2-(n-1)*2-ii;
            if jj>=1
                A(1+jj,n-ii-jj)=(n-2*jj)^2-(n-3-(jj-1)*2)*2-ii;
            end
        end
        for ii=1:(n-2-jj*2)
            A(ii+1,1)=n^2-(n-1)*3-ii;
            if jj>=1
                A(ii+1+jj,1+jj)=(n-2*jj)^2-(n-3-(jj-1)*2)*3-ii;
            end
            
        end
    end
    
else
    for jj=0:(floor(n/2))
        for ii=1:(n-jj*2)
            A(1+jj,n+1-ii-jj)=(n-2*jj)^2+1-ii;
        end
        for ii=1:(n-1-jj*2)
            A(ii+1,1)=n^2-(n-1)-ii;
            if jj>=1
                A(ii+1+jj,1+jj)=(n-2*jj)^2-(n-1-jj*2)-ii;
            end
        end
        for ii=1:(n-1-jj*2)
            A(n,1+ii)=n^2-(n-1)*2-ii;
            if jj>=1
                A(n-jj,1+ii+jj)=(n-2*jj)^2-(n-1-jj*2)*2-ii;
            end
        end
        for ii=1:(n-2-jj*2)
            A(n-ii,n)=n^2-(n-1)*3-ii;
            if jj>=1
                A(n-ii-jj,n-jj)=(n-2*jj)^2-(n-1-jj*2)*3-ii;
            end
        end
    end
end
disp(A)

for ii=1:n
    for jj=1:n
        for k=2:(A(ii,jj)-1)
            if mod(A(ii,jj),k)==0  %ボ计
                X(ii,jj)=2;
                break
            else                  % ボ借计
                X(ii,jj)=1;
            end
        end
        if A(ii,jj)==2
            X(ii,jj)=1;
        end
        if A(ii,jj)==1
            X(ii,jj)=2;
        end
    end
end
map=[0 0 0;1 1 1];
colormap(map)
image(X);
end


