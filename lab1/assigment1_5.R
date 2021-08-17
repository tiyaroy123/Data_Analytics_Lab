n = as.integer(readline(prompt = "Enter the number: "))
if(n < 0) {
print("Enter positive number")
} else {
s = (n * (n + 1)) / 2;
print(paste("The sum is", s))
}
