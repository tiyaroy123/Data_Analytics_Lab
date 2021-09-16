#a
pnorm(74, mean=70, sd=2, lower.tail=FALSE)

#b
qnorm(.99, mean=0, sd=1)

#c

P <- 1:10/sum(1:10)
Q <- 20:29/sum(20:29)

x <- rbind(P,Q)
install.packages('philentropy')
library(philentropy)

distance(x, method = "euclidean")
