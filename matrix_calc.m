function[New_C1,New_n1,New_C2,New_n2,New_C3,New_n3] = matrix_calc(C1,n1,C2,n2,C3,n3)
for i = 1:3
    if i == 1
        New_C1 = n1*C1;
        New_n1 = n1 - 1;
        if New_C1 == 0 
            New_n1 = 0;
        end
    elseif i == 2
        New_C2 = n2*C2;
        New_n2 = n2 - 1;
        if New_C2 == 0 
            New_n2 = 0;
        end
    elseif i == 3
        New_C3 = n3*C3;
        New_n3 = n3 - 1;
        if New_C3 == 0
            New_n3 = 0;
        end
    end
end

fprintf('Your derivative is %d*x^%d + %d*x^%d + %d*x^%d \n',New_C1,New_n1,New_C2,New_n2,New_C3,New_n3)

if New_n1 == New_n2
    simplified(New_C1,New_n1,New_C2,New_n2,New_C3,New_n3,C1,C2,C3,n1,n2,n3);
elseif New_n2 == New_n3
   simplified(New_C1,New_n1,New_C2,New_n2,New_C3,New_n3,C1,C2,C3,n1,n2,n3);
elseif New_n1 == New_n3
    simplified(New_C1,New_n1,New_C2,New_n2,New_C3,New_n3,C1,C2,C3,n1,n2,n3);
end
end

