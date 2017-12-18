function [] = simplified(New_C1,New_n1,New_C2,New_n2,New_C3,New_n3)

if (New_n1 == New_n2) && (New_n1 == New_n3)
    m=1;
    SimpC1 = New_C1 + New_C2 + New_C3;
    New_n2 = 0;
    New_n3 = 0;
else
    m=2;
end

if m == 2
    if New_n1 == New_n2
        SimpC1 = New_C1 + New_C2;
        SimpC2 = 0;
        SimpC3 = New_C3;
        New_n2 = 0;
    elseif New_n2 == New_n3
        SimpC2 = New_C2 + New_C3;
        SimpC1 = New_C1; 
        SimpC3 = 0;
        New_n3 = 0;
    elseif New_n1 == New_n3
        SimpC1 = New_C1 + New_C3;
        SimpC2 = New_C2;
        SimpC3 = 0;
        New_n3 = 0;
    end
end
fprintf('your simplified function is %dx^%d + %dx^%d + %dx^%d\n',SimpC1,New_n1,SimpC2,New_n2,SimpC3,New_n3)
end