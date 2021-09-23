#a
v <- c(1:10)
p <- dbinom(v, 11, 0.7)
barplot(p, v)

#b
c <- cumsum(table(v))
barplot(c, v)

#c
a <- c(2,4,6)
b <- dbinom(a, 10, 0.16)
plot(b)

#d
c <- dbinom(a, 10, 0.05)
plot(c)

d <- dbinom(a, 10, 0.2)
plot(d)

e <- dbinom(a, 10, 0.5)
plot(e)

f <- dbinom(a, 10, 0.8)
plot(f)

#e

x <- c(1:10)
y <- dpois(x, 0.2)
plot(y)
