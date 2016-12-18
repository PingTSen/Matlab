function OUT = Complement( cubeListe, ligne,colonne )

if isempty(cubeListe)
  
    R=[];
    for i=1: 5 
        R = [R 3]; 
    end
    OUT=R;
    return;
elseif allDontCare(cubeListe,ligne,colonne)
   
    R=[];
    OUT=R;
    return;
elseif ligne == 1
    R=[];
    R=deMorgan(cubeListe,colonne);
    OUT=R;
    return;
    
else
    min=0;
    indMin=0;
    co=0;
    for i=1:colonne
        X=monoforme(cubeListe(:,i),ligne); 
        if X(1)==-1
            Y=biforme(cubeListe(:,i));            
        elseif X(2)<min
            min = X(2);
            co=X(1);
            indMin = i;
        end
         
    end
   
end


end

