library(igraph)
ga.data <- read.csv('~/R/ga_edgelist.csv', header=TRUE)
g <- graph.data.frame(ga.data, directed=FALSE)
summary(g)

V(g)$name

g$layout <- layout.fruchterman.reingold(g)
plot(g)
