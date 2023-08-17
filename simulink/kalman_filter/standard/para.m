%% standard discrete kalman filter

%% Initialization
clear;clc
close all

%% Set parameters
% sampling time
Ts = 5;

% discrete system
Ak = [1 Ts Ts^2/2;0 1 Ts;0 0 1];
Bk = [0;0;0];
Ck = [1 0 0];
Dk = 0;

% init
x0_init = [0;0;0]; % system real init   
x0_est= [0;0;0];    % Predicted initial state
P0=[10 0 0; 0 10 0;0 0 10] % Predict variance

% discreate noise variance
Qk = [0;0;0];%discrete; only diag(noises are uncorrelated)
Rk = 30^2;%discrete; only diag(noises are uncorrelated)


