#Plotting vectors 

#given the column vector a = [10; 20; 30], plot this vector (using the plot function) using various line types and symbols;

using Plots

a = [10;20;30]
gr();
Plots.plot(a)
gr();
plot(
    a,
    xlabel="x label",
    ylabel="y label",
    label="a vector",
    shape=:star5
    )


Plots.unicodeplots()
Plots.plot(a)



#type “help plot” to the various possibilities that the plot function offers;
