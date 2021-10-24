#a
i <- data.frame(datasets::iris)
View(i)
plot(i)
summary(i)

o <- data.frame(datasets::Orange)
View(o)
plot(o)
summary(o)

#b

df <- USArrests
df <- na.omit(df)
df <- scale(df)
head(df)
install.packages("cluster")
library("cluster")
pam(df, 4, metric = 'euclidean', stand = FALSE)
fviz_nbclust(df, kmeans, method = "wss")

gap_stat <- clusGap(df,
                    FUN = kmeans,
                    nstart = 25,
                    K.max = 10,
                    B = 50)
install.packages("factoextra")
library("factoextra")
fviz_gap_stat(gap_stat)
set.seed(1)
km <- kmeans(df, centers = 4, nstart = 25)
km
fviz_cluster(km, data = df)
aggregate(USArrests, by=list(cluster=km$cluster), mean)
final_data <- cbind(USArrests, cluster = km$cluster)
head(final_data)


#c

pam(df, 4, metric = 'manhattan', stand = FALSE)
pam.res <- pam(df, 4)
print(pam.res)
dd <- cbind(USArrests, cluster = pam.res$clustering)
head(dd, n = 3)
pam.res$medoids
head(pam.res$clustering)
