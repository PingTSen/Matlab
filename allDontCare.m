function boolAns = allDontCare( cubeList,ligne,colonne )

i=1;

isOk=true;
isIdem=true;

while i<= ligne && isOk
    if cubeList(i,1)==3
        j=2;
        while j<=colonne && isIdem
          isIdem = cubeList(i,j)==3;
          j=j+1;
          disp('j');
          disp(j);
        end
    
         
        if isIdem 
             isOk=~isIdem;      
        end
        isIdem=true;
        disp('i');
        disp(i);
    end 
    i=i+1; 
end
boolAns=~isOk;
end

