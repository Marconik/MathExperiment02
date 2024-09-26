function moveM(A,N,i)
    if i == N^2+1
        if JudgeHadamard(A,N,N)==1 & A(1:N,1)==ones(1,N)
            writematrix(A,"TestResult.txt",Delimiter=',',WriteMode='append');
            return
        end
    else
        [u,v]=positionM(i,N);
        if JudgeHadamard(A(1:u-1,1:N),u-1,N)==0
            return
        end
        A(u,v)=1;
        moveM(A,N,i+1);
        A(u,v)=-1;
        moveM(A,N,i+1);
    end
end