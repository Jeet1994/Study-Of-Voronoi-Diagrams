#Let's generate some fake data
set.seed(105)
long<-rnorm(26,-98,15)
lat<-rnorm(26,39,10)
df <- data.frame(lat,long,name=c(LETTERS))
library(deldir)
library(ggplot2)
#This creates the voronoi line segments
voronoi <- deldir(df$long, df$lat)
#Now we can make a plot
ggplot(data=df, aes(x=long,y=lat)) +
  
  #Plot the voronoi lines
  geom_segment(
    aes(x = x1, y = y1, xend = x2, yend = y2),
    size = 1,
    data = voronoi$dirsgs,
    # or for Delaunay lines btw pts., use: data=voronoi$delsgs
    linetype = 1,
    color= "#FFB958") +
  geom_text(aes(label=df$name),hjust=-0.5, vjust=0) +
  
  #Plot the points
  geom_point(
    fill=rgb(70,130,180,255,maxColorValue=255),
    pch=21,
    size = 2,
    color="#333333")

