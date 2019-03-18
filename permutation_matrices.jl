#given the matrix  A = [1 2 3; 2 4 8; 3 9 27] and the matrix P = [0 1 0; 1 0 0; 0 0 1], compute the matrix C = P*A and the matrix C = A*P. Explain what the effect in both cases is; 

A = [1 2 3; 2 4 8; 3 9 27]
P = [0 1 0; 1 0 0; 0 0 1]

println(P*A)
println(A*P)

#given the matrix P = [0 1 0; 1 0 0; 0 0 1], compute the matrix C = P*P. Explain your findings; 

println(P*P)

#given the 3-by-3 permutation matrix that interchanges the first and last row of A; 

P1 = [0 0 1; 0 1 0; 1 0 0]
println(P1*A)