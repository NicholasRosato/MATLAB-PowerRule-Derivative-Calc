function [] = plot_1(C1, n1, C2, n2, C3, n3, New_C1, New_n1, New_C2, New_n2, New_C3, New_n3)

prompt = ('At what x value would you like to start at?\n');
x1 = input(prompt);
prompt = ('At what x value would you like to end at?\n');
x2 = input(prompt);

prompt = ('What is your time step?\n');
t_step = input(prompt);
range = x1:t_step:x2;

for i = x1:t_step:x2
y_equation = C1*(i^n1) + C2*(i^n2) + C3*(i^n3);

y_derivative = New_C1*(i^New_n1) + New_C2*(i^New_n2) + New_C3*(i^New_n3);
scatter(i,y_equation)
hold on
scatter(i,y_derivative)
hold on
end

data_matrix = []
data_1matrix = []
for rows = x1:t_step:x2
    for cols = 1
        table_equation = C1*(rows^n1) + C2*(rows^n2) + C3*(rows^n3);
        FunctionofX = table(rows,table_equation)
        table_derivative = New_C1*(rows^New_n1) + New_C2*(rows^New_n2) + New_C3*(rows^New_n3);
        Derivative = table(rows,table_derivative)
    end
end
        




end