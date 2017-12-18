function[] = derivative_exec()
prompt = ('How many components do you have?\n');
components = input(prompt); %up to 3

round = 1; 

for i = 1:components

    if i == 1
        prompt = ('What is the coefficient?\n');
        fprintf('Input coefficient %d\n', round)
        C1 = input(prompt);
        prompt = ('Is there an x paired with this coefficient\n');
        Yes = 1;
        No = 2;
        yes = Yes;
        no = No; 
            if input(prompt) == 1
                prompt = ('What is the exponent\n');
                n1 = input(prompt);
            else input(prompt) == 2
                n1 = 0;
            end
        
    elseif i == 2
        prompt = ('What is the coefficient?\n');
        fprintf('Input coefficient %d\n', round)
        C2 = input(prompt);
        prompt = ('Is there an x paired with this coefficient\n');
        Yes = 1;
        No = 2;
        yes = Yes;
        no = No; 
            if input(prompt) == 1
                prompt = ('What is the exponent\n');
                n2 = input(prompt);
            else input(prompt) == 2
                n2 = 0;
            end
    elseif i == 3
        prompt = ('What is the coefficient?\n');
        fprintf('Input coefficient %d\n', round)
        C3 = input(prompt);
        prompt = ('Is there an x paired with this coefficient\n');
        Yes = 1;
        No = 2;
        yes = Yes;
        no = No; 
            if input(prompt) == 1
                prompt = ('What is the exponent?\n');
                n3 = input(prompt);
            else input(prompt) == 2
                n3 = 0;
            end
    end
    round = round + 1;
end

if components == 1
    C2 = 0;
    n2 = 0;
    C3 = 0;
    n3 = 0;
elseif components == 2
    C3 = 0;
    n3 = 0;
end

fprintf('your equation is %dx^%d + %dx^%d + %dx^%d \n', C1,n1,C2,n2,C3,n3)
equation_matrix = [C1, n1; C2, n2; C3, n3];
prompt = ('would you like to calc the derivative? \n');
sure = 1;
Sure = 1;
Variable = input(prompt);


if Variable == 1
[New_C1,New_n1,New_C2,New_n2,New_C3,New_n3]=matrix_calc(C1,n1,C2,n2,C3,n3);
end

prompt=('Would you like to graph your equations?\n');
yes = 1;
no = 2;
graph = input(prompt);

if graph == 1
    plot_1(C1, n1, C2, n2, C3, n3,New_C1, New_n1, New_C2, New_n2, New_C3, New_n3);
end
end







 