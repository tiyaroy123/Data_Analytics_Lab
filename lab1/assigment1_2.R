n = as.integer(readline(prompt = "Enter a number: "))
if(n < 0) {
  print("Enter a positive number")
} else {
  s = 0
  while(n > 0) {
    s = s + n
    n = n - 1
  }
  print(paste("The sum is", s))
}
