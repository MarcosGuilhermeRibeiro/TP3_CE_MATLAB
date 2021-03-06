
clc;

global N; %N�mero de indiv�duos

N = 20;


population = generate_initial_population (N);
population = evaluate_population (population);

x = zeros(1,N);
y = zeros(1,N);
figure;
for i=1: 100
   
    population = generate_new_population (population, N);
    
    output = '';
    for j=1: N
        output = strcat(output,num2str(population(j).x),{char(9)});
    end
    
    disp(output)
    
    for j=1: N
        x(j) = population(j).y1;
        y(j) = population(j).y2;
    end
    
    h = plot(x,y,'o');
    h.XDataSource = 'x';
    h.YDataSource = 'y';
    
    refresh
    pause(0.2);

end




