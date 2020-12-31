function [res] = classification(X, y, lambda)

y_number = 3;

[X_norm, mu, sigma] = featureNormalize(X);

X = X_norm;

[all_theta] = oneVsAll(X,y,y_number,lambda);

res = predictOneVsAll(all_theta, X);


end



% pred = classification(X,y,0.3);
% fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y)) * 100);

%pred = classification(X_valid,y_valid,0.3);
%fprintf('\nTraining Set Accuracy: %f\n', mean(double(pred == y_valid)) * 100);


