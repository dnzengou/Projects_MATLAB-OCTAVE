function [theta] = normalEqn_ISOS(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1); % initialize theta / theta = matrix (5*1)of zeros

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

 thetaNormEqn = pinv(X' * X) * X' * y;
 
 theta = thetaNormEqn;
 

% ---------------------- Sample Solution ----------------------




% -------------------------------------------------------------


% ============================================================

end
