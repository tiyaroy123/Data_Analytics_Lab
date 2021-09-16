#a

getwd()
setwd("C:/Users/suche/Downloads/M.Tech_3rd_Sem/Data Analytics Lab")
data <- read.csv('iris.csv')
View(data)

#b

plot(x=data$petal_length,y =data$petal_width, xlab = 'Petal_Length', ylab = 'Petal_Width')

#c

x = subset(data, species == 'Iris-setosa')[,1:4]
y = subset(data, species == 'Iris-versicolor')[,1:4]
z = subset(data, species == 'Iris-virginica')[,1:4]
x1 <- rbind(x,y)
y1 <- rbind(y,z)
z1 <- rbind(x,z)
stats::dist(x1, method = "euclidean") 
stats::dist(y1, method = "euclidean") 
stats::dist(z1, method = "euclidean") 
