function stiftness_matrix = generate_stiftness_matrix(n, fi)
    h = 1 / n;
    
    result = zeros(n - 1, n - 1);
    delta = generate_delta_h(h, fi);
    m1 = generate_m_r1(h);
    
    for i = 1 : n - 2
        m2 = generate_m_r2(n, i + 2);
        
        M = delta + m1 + m2;
        
        M_transformed = generate_matrix(i, M, n);
        result = result + M_transformed;
    end
    
    result(1, 1) = result(1, 1) + h / 2;
    result(n - 1, n - 1) = result(n - 1, n - 1) + h / 2;
    
    stiftness_matrix = result;
end

function generated_matrix = generate_matrix(i, M, n)
    temp = zeros(n - 1, n - 1);
    temp(i:i + 1, i:i + 1) = M;
    
    generated_matrix = temp;
end