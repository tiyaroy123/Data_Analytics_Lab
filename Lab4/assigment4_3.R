x1 <- rnorm(100)
plot(density(x1), type = "l")
x2 <- numeric(100)
for (i in 1:100) {
  x2[i] <- mean(rnorm(4))
  }
lines(density(x2), col = "red")

for (i in 1:100) {
  x2[i] <- mean(rnorm(9))
}
lines(density(x2), col = "blue")

for (i in 1:100) {
  x2[i] <- mean(rnorm(25))
}
lines(density(av), col = "green")
