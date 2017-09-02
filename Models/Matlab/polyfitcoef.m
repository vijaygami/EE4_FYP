function p=polyfitcoef(x,y,powers)
% Finds the optimal coeficnets for the 'powers' specified. the rest are zero.
%
% Inputs:
%   powers: A vector of integers containing all the desired powers of
%   the polynomial in, eg [5,3,1] will fit the polynomial y = ax^5+ bx^3+cx
%   x: x axis input
%   y: y axis input
%
% Outputs:
%   p:the resulting vector of optimal polynomial coeficnets. The ones not
%   included in 'powers' are zero.
%
    y=y(:);                         % ensures column vector
    x=x(:);
    powers=powers(:);
    A=bsxfun(@power,x,powers');     % Matrix of powers of x
    [Q,R]=qr(A);                    % QR decomposition
    coeffs = R\(Q'*y);              % Solve linear equations
    p=zeros(1,max(powers)+1);
    p(powers+1)=coeffs;
    p=p(end:-1:1);                  % so result is in decending order of powers
    
end
