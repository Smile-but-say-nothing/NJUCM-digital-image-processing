function y = while_M(x)
    if x > 2
        y = 2*exp(x);
    elseif x < 2 && x > -2
            y = x^2 + 2;
    else
        y = -x^2 - 2;
    end
end