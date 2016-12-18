function NVMAT = deMorgan( cubeList, colonne )
j=colonne;
i=0;
M=[];
while j >= 1
    if cubeList(1,j)~=3
        R(1,1:colonne)=3;
        if cubeList(1,j)==2
            R(1,j)=1;
        else
            R(1,j)=2;
        end
        M=[R; M];
        
    end
    j=j-1;
end
NVMAT=M;
end

