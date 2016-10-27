set.seed(1)
pts <- cbind(X=rnorm(500,rep(seq(1,9,by=2)/10,100),.022),Y=rnorm(500,.5,.15))
plot(pts)


km1 <- kmeans(pts, centers=5, nstart = 1, algorithm = "Lloyd")
library(tripack)
library(RColorBrewer)
CL5 <- brewer.pal(5, "Pastel1")
V <- voronoi.mosaic(km1$centers[,1],km1$centers[,2])
P <- voronoi.polygons(V)
plot(pts,pch=19,xlim=0:1,ylim=0:1,xlab="",ylab="",col=CL5[km1$cluster])
points(km1$centers[,1],km1$centers[,2],pch=3,cex=1.5,lwd=2)
plot(V,add=TRUE)

set.seed(1)
A <- c(rep(.2,100),rep(.2,100),rep(.5,100),rep(.8,100),rep(.8,100))
B <- c(rep(.2,100),rep(.8,100),rep(.5,100),rep(.2,100),rep(.8,100))
pts <- cbind(X=rnorm(500,A,.075),Y=rnorm(500,B,.075))

