function[] = Peukarts_Law_Simulation( )
% This main funcion will load in data from a CSV file and will simulate 
% Peukart's law. 


    % Variables
    %  k        Peukert's constant used in the equation
    %  f        Peukert's function 
    % afActualDischarges   The discharge rates the user is interested in
    % afDischarges         Hypothetical discharge rates between 0 and 100
    % afTimes              The theoretical times at those discharge rates
    %  g                   The discharge rate as a function of time
    
    % Initialize Peukert's Constant 
    k = input("Enter Peukert's constant: "); % 1.249
    coeff = input("Enter constant: "); % 22263

    % Create function
    % Input: 
    %       c The constant coefficient in front
    %       k Peukert's constant
    %       x The amps passed into the function
    f = @(c, k, x) c*x.^(-k); 
    
    % Get actual discharge values
    afActualDischarges = input("Enter list of discharge rates to find times " + ...
        "(in minuted): ");
    
    % Create hypothetical discharge currents between 0 and 100
    afDischarges = 1 : 5 : 105;
       
    % Get times at discharge values
    afTimes = f(coeff, k, afDischarges); 

    % Plot x = Amps and y = time
    hold on; 
    figure(1)
    plot(afDischarges, afTimes, 'b-')
    plot(afActualDischarges, [1026.2, 402.6, 278.7, 97.1, 71.2], 'ro')
    hold off; 

    % Plot log-log plot
%     plot(log(afDischarges), log(afTimes), 'bo')

    
    % Calculate the discharge rate given a specific time
    g = @(t) (coeff/t)^(1/k);

    % Prompt user for their time of interest: 
    t = input("Enter time to find discharge rate (current): ");
    
    % Show results
    afDischRate = g(t); 
    fprintf("\nThe discharge rate (current) is " + afDischRate + " amps.\n")


    % Goals: 
    % - Learn how to calculate Peukert's constant using existing data
    % - Roughly understand how the batteries differ from each other. 

    % Longterm goals: 
    % - Implement feature that lets user input csv file with columns of
    %     batterieS 
    % - asks user for a time (115 minutes) and outputs the discharge rate 
    %     (current) in amps. 
    % - 

    % GOAL: 
    % Give me a table with your battery names, the currents (11.5, 25,
    % etc), the times, and the coefficients and peukerts constants. Then my
    % code will automatically plot all of the charts, and calculate the
    % discharge rates for all x batteries at whatever times you want. Then
    % it will pick the "best battery"
    
    

    
    
    