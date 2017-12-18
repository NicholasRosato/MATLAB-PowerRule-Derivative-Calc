function [] = Plot(C1, n1, C2, n2, C3, n3,New_C1, New_n1; New_C2, New_n2; New_C3, New_n3)

prompt = ('At what x value would you like to start at?\n');
x1 = input(prompt);
prompt = ('At what x value would you like to end at?\n');
x2 = input(prompt);

range = x1:.5:x2

for i = x1:.5:x2
y_equation = C1*(i^n1) + C2*(i^n2) + C3*(i^n3);

y_derivative = New_C1*(i^New_n1) + New_C2*(i^New_n2) + New_c3*(i^New_n3);
scatter(i,y_equation)
hold on
scatter(i,y_derivative)
hold on
end



%equation_matrix = [C1, n1; C2, n2; C3, n3];
%derivative_matrix = [New_C1, New_n1; New_C2, New_n2; New_C3, New_n3];

end