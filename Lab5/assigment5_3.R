P <- 1:10/sum(1:10)
Q <- 20:29/sum(20:29)

x <- rbind(P,Q)
install.packages('lsa')

library(lsa)

stats::dist(x, method = "manhattan")

cosine(x)
