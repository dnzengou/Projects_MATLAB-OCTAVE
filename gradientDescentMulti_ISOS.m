function [theta, J_history] = gradientDescentMulti_ISOS(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %
    %[ for i = 1:size(mu,2)
    %mu(1,i) = mean(X(:,i)); ]
    
  % defining the derivate of theta(j) portion
    d = (1/m) * X' * (X*theta - y); % sum i = 0 to m goes away!
    
    % defining the value of theta(j)
    theta = theta - alpha * d;
    
    
    % In order to debug, the cost shows the decrease during the iterations.
    %jCost = computeCostMulti_ISOS(X, y, theta);
    %disp(jCost)





    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti_ISOS(X, y, theta);

end

end
