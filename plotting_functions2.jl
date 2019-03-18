#create the vector x = [-3:0.01:3] and the vector y = x.*x (using the pointwise multiplication of the x with x). 
#Explain why the pointwise multiplication is required here. Next plot the parabola using plot(x,y). Next find the equation of tangent line to the parabola in the point x=2. 
# Plot this tangent line for -3 <= x <= 3 superimposed on the previous plot. Use this plot (combined with the zoom function for instance) 
# to find the intersection of this tangent line with the x-axis.  Repeat at this point of intersection the process of finding the equation of the tangent line,
# plotting the tangent line and finding the intersection of the tangent line with the x-axis. Discuss what you observe;  

using Plots


x = [-3: 0.01: 3]
y = x[1].*x[1]

plot(x, y)

function tangent(x, x0)
    x0v = fill(x0, size(x))
    return (2*x0).*(x-x0v) + x0v.*x0v
end

function findnearest(A, t)
    xt = fill(t, size(A))
    elem = A-xt
    return findmin(abs.(elem))
end

tgts = Array{Float64, 1}
i = 2


tgt = tangent.(collect(x), i)
i = x[1][findnearest.(tgt, 0)[1][2]]
plot!(x, tgt)
tgt = tangent.(collect(x), i)
i = x[1][findnearest.(tgt, 0)[1][2]]
plot!(x, tgt)
tgt = tangent.(collect(x), i)
i = x[1][findnearest.(tgt, 0)[1][2]]
plot!(x, tgt)
tgt = tangent.(collect(x), i)
i = x[1][findnearest.(tgt, 0)[1][2]]
plot!(x, tgt)
tgt = tangent.(collect(x), i)
i = x[1][findnearest.(tgt, 0)[1][2]]
plot!(x, tgt)
tgt = tangent.(collect(x), i)
i = x[1][findnearest.(tgt, 0)[1][2]]
plot!(x, tgt)
tgt = tangent.(collect(x), i)
i = x[1][findnearest.(tgt, 0)[1][2]]
plot!(x, tgt)
tgt = tangent.(collect(x), i)
i = x[1][findnearest.(tgt, 0)[1][2]]
plot!(x, tgt)





# y - f(x0) = f'(x0)(x-x0)
