%% Machine Learning Experiment with Real Life Data 
%% Note. Analysis hypothetic and not rigorous

%% Initialization

%% ================ Part 1: Feature Normalization ================

%% Clear and Close Figures
clear ; close all; clc

fprintf('Loading data ...\n');

%% Load and Plot Data
fprintf('Plotting Data ...\n')
data = load('dataISOS2.txt');
X = data(:, 1:4);
y = data(:, 5);
m = length(y); % number of training examples

% Plot X and y
subplot(1,2,1);
plot(X);
title('Plot X');
subplot(1,2,2);
plot(y);
title('Plot y');

fprintf('Program paused. Press enter to continue.\n');
fprintf('\n');
pause;

% Clear and Close Figures
clf ; close()

% Print out some data points
fprintf('First 6 examples from the dataset: \n');
fprintf(' x = [%.0f %.0f %.0f %.0f], y = %.0f \n', [X(1:6,:) y(1:6,:)]');
%fprintf(' x = [%.0f %.0f %.0f %.0f %.0f], y = %.0f \n', 
%[X(1:size(X,1),:) y(1:size(y,1),:)]');
% x = [28 16 29 13965], y = 4157 
% x = [1 15 18 15000], y = 616 
% x = [5 12 1 17400], y = 819 
% x = [6 5 0 8421], y = 119 
% x = [4 0 0 1801], y = 109 
% x = [4 0 0 2222], y = 22

fprintf('Program paused. Press enter to continue.\n');
fprintf('\n');
pause;

% Scale features and set them to zero mean %% [ TO CORRECT!
fprintf('Normalizing Features ...\n');

[X, mu, sigma] = featureNormalize_ISOS(X);

fprintf('A normalized version of X is: \n');
fprintf(' x_norm = [%.0f %.0f %.0f %.0f] \n', X(1:6,:)');

fprintf('Program paused. Press enter to continue.\n');
fprintf('\n');
pause;

% Add intercept term to X
X = [ones(m, 1) X];

fprintf(' x = [%.0f %.0f %.0f %.0f %.0f], y = %.0f \n', [X(1:6,:) y(1:6,:)]');
fprintf('\n'); %% END CORRECTION! ]

%% ================ Part 2: Gradient Descent ================

% ====================== YOUR CODE HERE ======================
% Instructions: We have provided you with the following starter
%               code that runs gradient descent with a particular
%               learning rate (alpha). 
%
%               Your task is to first make sure that your functions - 
%               computeCost and gradientDescent already work with 
%               this starter code and support multiple variables.
%
%               After that, try running gradient descent with 
%               different values of alpha and see which one gives
%               you the best result.
%
%               Finally, you should complete the code at the end
%               to predict the price of a 1650 sq-ft, 3 br house.
%
% Hint: By using the 'hold on' command, you can plot multiple
%       graphs on the same figure.
%
% Hint: At prediction, make sure you do the same feature normalization.
%

%fprintf('Running gradient descent ...\n');

% Choose some alpha value
%alpha = 0.01;
%num_iters = 400;

% Init Theta and Run Gradient Descent 
%theta = zeros(3, 1);
%[theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters);

% Plot the convergence graph
%figure;
%plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
%xlabel('Number of iterations');
%ylabel('Cost J');

% Display gradient descent's result
%fprintf('Theta computed from gradient descent: \n');
%fprintf(' %f \n', theta);
%fprintf('\n');

% Estimate the price of a 1650 sq-ft, 3 br house
% ====================== YOUR CODE HERE ======================
% Recall that the first column of X is all-ones. Thus, it does
% not need to be normalized.
%price = 0; % You should change this


% ============================================================

%fprintf(['Predicted price of a 1650 sq-ft, 3 br house ' ...
         %'(using gradient descent):\n $%f\n'], price);

%fprintf('Program paused. Press enter to continue.\n');
%pause;

%% ================ Part 3: Normal Equations ================

fprintf('Solving with normal equations...\n');

% ====================== YOUR CODE HERE ======================
% Instructions: The following code computes the closed form 
%               solution for linear regression using the normal
%               equations. You should complete the code in 
%               normalEqn.m
%
%               After doing so, you should complete this code 
%               to predict the price of a 1650 sq-ft, 3 br house.
%

%% Load Data
data = csvread('dataISOS2.txt');
X = data(:, 1:4);
y = data(:, 5);
m = length(y);

% Add intercept term to X
XNormEqn = [ones(m, 1) X];

% Calculate the parameters from the normal equation
thetaNormEqn = normalEqn_ISOS(XNormEqn, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' theta = %f \n', thetaNormEqn);
fprintf('\n');


%% Prediction of # cases
% by estimating the prices (h) and cost function J(theta)
% ====================== YOUR CODE HERE ======================
price = 0; % initialize the price at zero

% ============================================================

fprintf(['Estimating function h(theta), the prices (in #cases) for multiple training cases'... 
    'based on the variables x(i=1:n) (Proximity to Care, Demographic, etc.)' ...
         '(using normal equations):\n [units]\n'], price);
h = XNormEqn*thetaNormEqn;  % estimate h?() for multiple training cases, where h?() is a function
% found by the learning algorithm and specifically parameterized with ?
fprintf('h() is: %.2f \n', h); % computed with the vecteur theta
%fprintf(' price = %.2f \n', h);

fprintf('Plotting Prices Data ...\n')
plot(X);
title('Plot "Prices" : h vs. x variables'); % x variables = ISOS Region, Proximity to Care, Demographics, Workforce Population
xlabel('iterations');
ylabel('#cases');

fprintf('Program paused. Press enter to continue.\n');
fprintf('\n');
pause;

% Clear and Close Figures
clf ; close()

%J = (1/(2*m)) * (h - y)' * (h - y); % J(?)
% is the cost function of h?() that evaluates how close h(x) match y 
% given the variables x finding the parameters ? used by h()

eg1 = [1 28 16 29 13965];
%fprintf(['In particular, predicting the specific price [#cases] of the following configuration, based on the variables x(i=1:n)' ...
%         '(using normal equations):\n [units]%.0f\n'], price);
fprintf('In particular, predicting the specific price [#cases] of the following configuration, based on the variables x(i=1:n)\n');
fprintf('%.0f \n ISOS Region = %.0f \n (#countries in Africa, Australia, Canada, China, Asia or EMEA) \n \n Proximity to Definitive Care = %.0f \n (#clinics located between <1 h and 6+ hrs]\n \n Demographics = %.0f \n (#groups between 20 and 55+ mixed/healthy)\n \n Workforce peak population = %.0f \n (#employees associated to each ISOS Region)\n', eg1);
fprintf('\n');
price = (eg1)*thetaNormEqn;
fprintf('Price via Normal Equation: %.0f (#cases)', price);
fprintf('\n');

%clear price;
%fprintf('\n');
%fprintf('Price via Gradient Descent:');
%price = predictPrice(theta,eg1,mu,stddev);
%disp(price);
%fprintf('Total time in seconds taken to run program\n');
%disp(cputime-t);

