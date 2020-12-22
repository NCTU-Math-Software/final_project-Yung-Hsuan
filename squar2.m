function squar2(n)
B=0;
for ii=1:n
    B=B+ii^2-(ii-1);
end
if n/2==ceil(n/2)
    for ii=2:2:n
        B=B+ii^2;
        B=B+(ii-1)^2+1;
    end
else
    for ii=3:2:n
        B=B+ii^2;
        B=B+(ii-1)^2+1;
    end
end
disp('對角縣及反對角線之總和:')
disp(B)

end
