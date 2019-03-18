#Vectors 

#given the column vector a = [10; 20; 30], retrieve (or print to screen) first, first two, last (using the end keyword) and last two elements; 

println("\n1. Task")
a = [10; 20; 30]
println(a[1])
println(a[1:2])
println(a[end])
println(a[2:end])

#compare the syntax of a = [10 20 30] and a = [10; 20; 30]; 

println("\n2. Task")

#this one produces Row Vector (1x3 size)
a = [10 20 30]
println(a)

#this one produces Column Vector (3 size)
a = [10; 20; 30]
println(a)

#use the function ones (zeros) to form the vector with all three components equal to one (zero). See “help zeros” and “help ones” for details;  

println("\n3. Task")

ones(Int64, 3)
zeros(Int64, 3)

#given the column vector a = [10; 20; 30], compute the new vector 3*a; 

println("\n4. Task")

a = [10; 20; 30]
b = 3 * a
println(b)

#given the column vector a = [10; 20; 30], compute the min, max and norm of the vector a; 

println("\n5. Task")

a = [10; 20; 30]
println(minimum(a))
println(maximum(a))

using LinearAlgebra
println("Euclidean Norm: ", LinearAlgebra.norm(a))
println("1-norm of the vector: ", LinearAlgebra.norm(a, 1))

#given the column vector a = [10; 20; 30] and the column vector b = [.1 ; .2 ;  .3], compute the new vector a+b; 

println("\n6. Task")

a = [10; 20; 30]
b = [.1; .2; .3]
println(a+b)

#given the column vector a = [10; 20; 30] and the column vector b = [.1 ; .2 ;  .3], compute the inner product of a and b using the multiplication of two matrices; 

println("\n7. Task")

a = [10; 20; 30]
b = [.1; .2; .3]
println(transpose(a)*b)

#given the column vector a = [10; 20; 30] and the column vector b = [.1 ; .2 ;  .3], compute pointwise multiplication of a and b; 

println("\n7. Task")

a = [10; 20; 30]
b = [.1; .2; .3]
println(a.*b)

#given the column vector a = [10; 20; 30] and the column vector b = [.1 ; .2 ;  .3], compute the matrix a*transpose(b); Give the size of this matrix. Explain your findings; 

a = [10; 20; 30]
b = [.1; .2; .3]
println(a*transpose(b))

println("size of matrix is 3x3, because a will be Column Vector [3x1] and b will be Row Vector [1x3]. \nWhen we multiply them, the sizes are going to change to 3x3 in the result")

