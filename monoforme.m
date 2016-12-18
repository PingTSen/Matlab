function X = monoforme( cubeList, ligne )
val=-1;
cpt=0;
i = 0 ;
isMono=true;
while i<= ligne-1 && isMono
        if cubeList(i)~=3
            val = cubeList(i);
            if val ~=cubeList(i+1) && cubeList(i+1) ~=3
                isMono = false;
            else
                cpt=cpt+1;
            end
        end
        i=i+1;
end
M=[val,cpt];
X=M;

end
