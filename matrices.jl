#Matrices 

#given the matrix A = [1 2 3; 2 4 8; 3 9 27], retrieve (or print to screen) the first row of A, the last column of A (using the end keyword) and the submatrix A1 = [1 3; 3 27];

A = [1 2 3; 2 4 8; 3 9 27]
println(A[1,:])
println(A[:,end])
println(A[[1,3],[1,3]])

#given the matrix A = [1 2 3; 2 4 8; 3 9 27], retrieve (or print to screen) the diagonal of A (see “help diag”), the lower triangular part of A (see “help tril”) and then upper triangular part of A (see “help triu”); 

using LinearAlgebra

A = [1 2 3; 2 4 8; 3 9 27]
Diagonal(A)
UpperTriangular(A)
LowerTraingular(A)

#given the matrix A = [1 2 3; 2 4 8; 3 9 27], create and print to screen the matrix B = transpose(A) and the matrix C = transpose(B). What do you observe. Explain your findings; 

A = [1 2 3; 2 4 8; 3 9 27]
B = transpose(A)
C = transpose(B)
println(B)
println(C)

#use the function zeros (ones) to create a 3-by-3 matrix with all elements equal to zero (one); 

zeros(3,3)
ones(3,3)

#use the function eye to create the 3-by-3 identity matrix (see “help eye”); 

Diagonal(ones(3))

#given the matrix A = [1 2 3; 2 4 8; 3 9 27] , compute the new matrix 5*A; 

A = [1 2 3; 2 4 8; 3 9 27]
println(5*A)

#given the matrix A = [1 2 3; 2 4 8; 3 9 27] , find the min, max, and norm of the matrix A (you will learn more about matrix norms very soon); 

A = [1 2 3; 2 4 8; 3 9 27]
minimum(A)
maximum(A)
norm(A)

#given the matrix A = [1 2 3; 2 4 8; 3 9 27] and the matrix B = eye(3), compute the new matrix C = A+B and C = B+A. Explain what you observe; 

A = [1 2 3; 2 4 8; 3 9 27]
B = Diagonal(ones(3))
println(A+B)
println(B+A)

#given the matrix A = [1 2 3; 2 4 8; 3 9 27] and the matrix B = eye(3), compute the new matrix C = A*B and C = B*A; 

A = [1 2 3; 2 4 8; 3 9 27]
B = Diagonal(ones(3))
println(A*B)
println(B*A)

#given the matrix A = [1 2 3; 2 4 8; 3 9 27] and the matrix B = ones(3), compute the new matrix C = A*B and C = B*A. Use the definition of the matrix-matrix product to explain your findings; 

A = [1 2 3; 2 4 8; 3 9 27]
B = ones(3)
println(A*B)
#println(B*A)

#given the matrix A = [1 2 3; 2 4 8; 3 9 27] , compute the new matrix C= A*A and the new matrix C=A.*A (observe the point wise multiplication). Explain your findings using again the definition of the matrix-matrix product; 

A = [1 2 3; 2 4 8; 3 9 27] 
C = A*A
C = A.*A