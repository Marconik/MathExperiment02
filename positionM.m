function [y1,y2]=positionM(i,N)
    y1=floor((i-1)/N)+1;
    y2=i-floor((i-1)/N)*N;
end