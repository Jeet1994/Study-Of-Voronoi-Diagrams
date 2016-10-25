library(deldir)

# Generate points
x <- rnorm(300, 0, 2.5)
y <- rnorm(300, 0, 2)
# Calculate tessellation and triangulation
vtess <- deldir(x, y)

#Voronoi
plot(x, y, type="n", asp=1)
points(x, y, pch=20, col="red", cex=0.5)
plot(vtess, wlines="tess", wpoints="none", number=FALSE, add=TRUE, lty=1)

# Delaunay triangulation
plot(x, y, type="n", asp=0) #asp - The aspect ratio of the plot
plot(vtess, wlines="triang", wpoints="none", number=FALSE, add=TRUE, lty=1)
points(x, y, pch=20, col="black", cex=0.5)

#Replace the type="n", with "o", "p" and see the difference. 
#Please explain to me what it means if you understand it. 

