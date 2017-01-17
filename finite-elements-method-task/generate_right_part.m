function right_part = generate_right_part(n)
    r(1 : n - 1) = generate_ith_component(n);
    right_part = r';
end

% для f = 1
function ith_component = generate_ith_component(n)
    h = 1 / n;
    ith_component = h;
end

% TODO: для f = x^4
function ith_component = generate_ith_component_for_x_pow_k(i, n)
    ith_component = 0;
end