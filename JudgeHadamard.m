function y=JudgeHadamard(A,M,N)
    if A*A'==N*eye(M)
        y=1;
    else
        y=0;
    end
end