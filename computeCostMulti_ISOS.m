function J = computeCostMulti_ISOS(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
theta = zeros(size(X, 2), 1); % initialize theta / 
%theta = matrix (5*1)of zeros

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

theta = pinv(X' * X) * X' * y;
J = (1/(2*m)) * (X*theta - y)' * (X*theta - y);

% =========================================================================

end
