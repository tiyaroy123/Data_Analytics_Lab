#a
P <- 1:10/sum(1:10)

#b
Q <- 20:29/sum(20:29)

#c
x <- rbind(P,Q)
install.packages('philentropy')
library(philentropy)

distance(x, method = "euclidean")
