function[] = Peukarts_Law_Simulation( )
% This main funcion will load in data from a CSV file and will simulate 
% Peukart's law. 


    % Variables
    %  k        Peukert's constant used in the equation
    %  f        Peukert's function 
    
    % Initialize Peukert's Constant 
    k = 1.249; 
    coeff = 22263; 

    % Create function
    % Input: 
    %       c The constant coefficient in front
    %       k Peukert's constant
    %       x The amps passed into the function
    f = @(c, k, x) c*x.^(-k); 
    
    
    % Create hypothetical discharge currents between 0 and 100
    afDischarges = [1 : 4 : 100];
       
    % Get times at discharge values
    afTimes = f(coeff, k, afDischarges); 

    % Plot x = Amps and y = time
    22263*(11.5)^(-1.249)
    %plot(log(afDischarges), log(afTimes), 'bo')
    
    % Goals: 
    % - Learn how to calculate Peukert's constant using existing data
    % - Roughly understand how the batteries differ from each other. 

    % Longterm goals: 
    % - Implement feature that lets user input csv file with columns of
    % batteries, asks them for a time (115 minutes) and outputs the
    % discharge rate (current) in amps. 
    % - 
    
    

    
    
    