#given the matrix  A = [1 2 3; 2 4 8; 3 9 27] and the vector b = [1; 1; 1], solve the linear system Ax = b for the unknown vector x using the backslash (\) command (see “help mldivide” for details). Check the answer by computing the product of A and x and comparing the result of this product with the vector b; 
#read the details for the algorithm mldivide. To do so, open the reference pages on mldivide using “doc mldivide” and expand the tab on Algorithms; 

A = [1 2 3; 2 4 8; 3 9 27]
B = [1;1;1]

x = A \ B

#given the matrix  A = [1 2 3; 2 4 8; 3 9 27] and the vector b = [1; 1; 1], compute the LU decomposition of the matrix A using the Matlab function lu (see “help lu”). Next use the matrices L and U to solve the linear system Ax = b for the unknown vector x. Make a plot of the structure of the matrices L and U using the Matlab command spy (see “help spy”).  Explain the matrix structure you observe in L and U. Compare your answer for x with the previous exercise; 

using LinearAlgebra

L, U, p = lu(A)
x = U\(L\b)

using UnicodePlots

spy(U)
spy(L)

#given the matrix  A = [1 2 3; 2 4 8; 3 9 27] and the vector b = [1; 1; 1], compute the inverse of the matrix A using the Matlab command inv (see “help inv”). Use the inverse of A to compute the solution of the linear system A x = b for the unknown x. Compare your answer for x with the previous exercise; 

A = [1 2 3; 2 4 8; 3 9 27]
b = [1;1;1]

x = inv(A)*b

#Next use the matrices L and U to solve the linear system Ax = b for the unknown vector x. Compare your answer with the previous exercise;

L, U, p = lu(inv(A))
x = L*U*b

#given the matrices A = [1 2 3; 2 4 8; 3 9 27], B = [1 2 3; 2 4 8; 3 6 9] and C = [1 2 3; 2 4 6; 3 6 9], compute the rank of the matrices A, B and C using the Matlab function rank (see “help rank” for details). Explain your findings; 

A = [1 2 3; 2 4 8; 3 9 27]
B = [1 2 3; 2 4 8; 3 6 9]
C = [1 2 3; 2 4 6; 3 6 9]

rank(A)
rank(B)
rank(C)

#given the column vector a = [10; 20; 30] and the column vector b = [.1 ; .2 ;  .3], compute the matrix a*transpose(b); Give the rank of this matrix. Explain your findings; 

a = [10; 20; 30]
b = [.1; .2; .3]

rank(a*transpose(b))

#given the matrix A = [1 2 3; 2 4 8; 3 9 27] and the vector b = [1;1;1], compute the number transpose(b)*A*b. Compare your answer with sum(sum(A)). Explain your findings;  

A = [1 2 3; 2 4 8; 3 9 27]
b = [1;1;1]

transpose(b)*A*b #59
sum(sum(A)) #59