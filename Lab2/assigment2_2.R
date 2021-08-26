#1
getwd()
setwd("C:/Users/suche/Downloads/M.Tech_3rd_Sem/Data Analytics Lab")
data <- read.csv('iris.csv')
View(data)

#2
mean(data$sepal_length)
mean(data$sepal_width)
mean(data$petal_length)
mean(data$petal_width)
