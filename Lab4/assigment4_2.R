#a

library(MASS)
plot(density(Animals$body))
x <- log(Animals$body)
plot(density(x))

#b
m <- mean(x)
s <- sd(x)
y <- pretty(c(m - 3 * s, m + 3 * s), 50)
lines(y, dnorm(y, mean = m, sd = s))
