X = [28	16	29	13965;1	15	18	15000;5	12	1	17400;6	5	0	8421;4	0	0	1801;1 4	0	0	2222]
% X =

           28          16          29       13965
           1          15          18       15000
           5          12           1       17400
           6           5           0        8421
           4           0           0        1801
           4           0           0        2222


% X_norm (i) = (X(1:6, i) - mu(1:6,i))/stdv(X(1:6, i))
X_norm =

2.01	1.1	1.68	0.62
-0.7	0.96	0.8	0.77
-0.3	0.55	-0.56	1.13
-0.2	-0.41	-0.64	-0.21
-0.4	-1.1	-0.64	-1.19
-0.4	-1.1	-0.64	-1.13


% intercept with matrix ones(m, 1) to yield matrix m*(n+1) = 48*5
X= [ones(m,1) X_norm] =

1	-0.6	-0.95	-0.51	-1.46
1	-0.88	-0.97	-0.58	-1.46
1	-0.84	-1.02	-0.68	-1.46
1	-0.82	-1.15	-0.69	-1.46
1	-0.85	-1.25	-0.69	-1.46
1	-0.85	-1.25	-0.69	-1.46

% y = [4157 1616 819 119 109 22]'
           y = 
4157
1616
819
119
109
22
% matrix m*1 = 48*1

% script from commandLines_ISOS.m file

commandLines_ISOS()

Loading data ...
Plotting Data ...
Program paused. Press enter to continue.

First 6 examples from the dataset: 
 x = [28 16 29 13965], y = 4157 
 x = [1 15 18 15000], y = 616 
 x = [5 12 1 17400], y = 819 
 x = [6 5 0 8421], y = 119 
 x = [4 0 0 1801], y = 109 
 x = [4 0 0 2222], y = 22 
Program paused. Press enter to continue.

Normalizing Features ...
A normalized version of X is: 
 x_norm = [27 15 28 13964] 
 x_norm = [0 14 17 14999] 
 x_norm = [4 11 0 17399] 
 x_norm = [5 4 -1 8420] 
 x_norm = [3 -1 -1 1800] 
 x_norm = [3 -1 -1 2221] 
Program paused. Press enter to continue.

 x = [1 27 15 28 13964], y = 4157 
 x = [1 0 14 17 14999], y = 616 
 x = [1 4 11 0 17399], y = 819 
 x = [1 5 4 -1 8420], y = 119 
 x = [1 3 -1 -1 1800], y = 109 
 x = [1 3 -1 -1 2221], y = 22 

Solving with normal equations...
Theta computed from the normal equations: 
 theta = -1311.810076 
 theta = 93.805098 
 theta = -558.808067 
 theta = 182.629852 
 theta = 0.463650 

h() computed with the vecteur theta is: 
 h = 4145 
 h = 642 
 h = 702 
 h = 361 
 h = -102 
 h = 94 

The predicted "cost", i.e cost function J(theta), based on the variables x(i=1:n)(using normal equations):
 [units]10233
