function delta_h = generate_delta_h(h, fi)
    delta_h = fi * [1 -1; -1 1] / h;
end