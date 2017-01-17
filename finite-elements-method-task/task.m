fi = 0.01;
n = 100;

K = generate_stiftness_matrix(n, fi);
f = generate_right_part(n);

alpha = linsolve(K, f);
plot(alpha)