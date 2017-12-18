function [] = simplified(New_C1,New_n1,New_C2,New_n2,New_C3,New_n3,C1,C2,C3,n1,n2,n3)

if (New_n1 == New_n2) && (New_n1 == New_n3)
    m=1;
    SimpC1 = New_C1 + New_C2 + New_C3;
    New_n2 = 0;
    New_n3 = 0;
    SimpC2 = 0;
    SimpC3 = 0;
else
    m=2;
end

while m == 2
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
    m = 3; 
end
fprintf('Your simplified function is %dx^%d + %dx^%d + %dx^%d\n',SimpC1,New_n1,SimpC2,New_n2,SimpC3,New_n3)

%prompt=('Would you like to graph your equations?\n');
%yes = 1;
%no = 2;
%graph = input(prompt);

%if graph == 1
 %   plot_1(C1, n1, C2, n2, C3, n3,New_C1, New_n1, New_C2, New_n2, New_C3, New_n3);
%end



end