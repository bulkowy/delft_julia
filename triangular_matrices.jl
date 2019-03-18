#Triangular matrices  

#given the lower triangular matrix A = [1 0 0 ; 2 4 0; 3 9 27], use the function eig (see “help eig”) to compute the eigenvalues of the matrix A. Compare the eigenvalues with diagonal entries of A. Explain your findings; 

A = [1 0 0 ; 2 4 0; 3 9 27]
B = Diagonal(A)
println(eigvals(A))
println(eigvals(B))

#given the lower triangular matrix A = [1 0 0 ; 2 4 0; 3 9 27], compute and println to screen the new C = A*A. What do you observe about the triangular structure of C. Compute the eigenvalues of C and compare with the diagonal entries; 

A = [1 0 0 ; 2 4 0; 3 9 27]
C = A*A
println(eigvals(C))
println(eigvals(Diagonal(C)))

#repeat above for C = A*A*A, C=pow(A,3), C=pow(A,4), C = pow(A,5) and C=pow(A,6);  

A = [1 0 0; 2 4 0; 3 9 27]
C = A^3
D = A^4
E = A^5
F = A^6
println(eigvals(C))
println(eigvals(Diagonal(C)))
println(eigvals(D))
println(eigvals(Diagonal(D)))
println(eigvals(E))
println(eigvals(Diagonal(E)))
println(eigvals(F))
println(eigvals(Diagonal(F)))

#repeat above for the upper triangular matrix A = [1 2 3; 0 4 8; 0 0 27];

A = [1 2 3; 0 4 8; 0 0 27]
B = Diagonal(A)
println(eigvals(A))
println(eigvals(B))

C = A*A
println(eigvals(C))
println(eigvals(Diagonal(C)))

C = A^3
D = A^4
E = A^5
F = A^6
println(eigvals(C))
println(eigvals(Diagonal(C)))
println(eigvals(D))
println(eigvals(Diagonal(D)))
println(eigvals(E))
println(eigvals(Diagonal(E)))
println(eigvals(F))
println(eigvals(Diagonal(F)))