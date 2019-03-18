#Plotting functions 

#create the vector x = [0:pi/100:2*pi] and the vector y = sin(x). Next plot the sin-function using plot(x,y). Add an x-axis label, y-axis label and a title to this plot. Next create the vector x1 = [0 pi/2 pi 3*pi/4 2*pi] and the vector y1 = sin(x1). Use the function “hold on” and “hold off” (see “help hold on”) to superimpose the plot of y1 vs. x1 on the previous plot; 

println("\nTask 1.")

using Plots

x = [0: pi/100: 2*pi]
y = sin.(x[1])

plot(x,y,
       xlabel="degrees",
       ylabel="value",
       title="sin(x), x in [0;2pi]"
       )

x1 = [0; pi/2; pi; 3*pi/2; 2*pi]

y1 = sin.(x1)

plot!(x1, y1)
