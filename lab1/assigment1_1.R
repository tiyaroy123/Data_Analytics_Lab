{
    x <- as.integer(readline(prompt = "Enter 1st number: "))
    y <- as.integer(readline(prompt = "Enter 2nd number: "))
    z <- as.integer(readline(prompt = "Enter 3rd number: "))

    if (x > y && x > z) {
      print(paste("Highest number is :", x))
    } else if (y > z) {
      print(paste("Highest number is :", y))
    } else{
      print(paste("Highest number is :", z))
    }

}
