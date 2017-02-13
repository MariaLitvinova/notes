function m_r2 = generate_m_r2(n, r)
    if r <= 1
        m_r2 = 0;
    else
        h = 1 / n;
        
        x_r = (r - 1) / n;
        x_r_1 = (r - 2) / n;

        difference5 = difference(x_r, x_r_1, 5);
        difference4 = difference(x_r, x_r_1, 4);
        difference3 = difference(x_r, x_r_1, 3);

        M_upper_left = (x_r^2 / 3 * difference3 - x_r * difference4 / 2 + difference5 / 5);
        M_down_right = (difference5 / 5 - x_r_1 * difference4 / 2 + x_r_1^2 * difference3 / 3);

        M_rest = -(difference5 / 5 - (x_r + x_r_1) * difference4 / 4 + x_r*x_r_1 * difference3 / 3);

        m_r2 = [M_upper_left M_rest; M_rest M_down_right] / h^2;
    end
end

function diff = difference(x_r, x_r_1, power)
    diff = x_r^power - x_r_1^power;
end