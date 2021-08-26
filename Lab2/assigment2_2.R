#a
getwd()
setwd("C:/Users/suche/Downloads/M.Tech_3rd_Sem/Data Analytics Lab")
data <- read.csv('iris.csv')
View(data)

#b
mean(data$sepal_length)
mean(data$sepal_width)
mean(data$petal_length)
mean(data$petal_width)

#c
agg_sum = aggregate(data[,1:4],by=list(data$class),FUN=sum, na.rm=TRUE)
agg_sum

#d
agg_count = aggregate(data[,1:4],by=list(data$class),FUN=length)
agg_count

#e
agg_max = aggregate(data[,1:4],by=list(data$class),FUN=max, na.rm=TRUE)
agg_max
