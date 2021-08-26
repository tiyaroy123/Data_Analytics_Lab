#1
getwd()
setwd("C:/Users/suche/Downloads/M.Tech_3rd_Sem/Data Analytics Lab")
data <- read.csv('Dataset.csv')
data

#2
View(data)
nrow(data)
ncol(data)
colnames(data)
str(data)
is.na(data)
mean(data,rm.na = TRUE)
list_na <- colnames(data)[ apply(data, 2, anyNA) ]
list_na
average_missing <- apply(data[,colnames(data) %in% list_na],2,mean,na.rm =  TRUE)
average_missing[1]
library(magrittr)
data %>% head()
df_replace <- data %>% dplyr::mutate(replace_mean_age  = ifelse(is.na(Age), average_missing[1], Age),replace_mean_salary = ifelse(is.na(Salary), average_missing[2], Salary))
View(df_replace)

#3
data$city_encoded[data$Country == "France"] = "1"
data$city_encoded[data$Country == "Spain"] = "2"
data$city_encoded[data$Country == "Germany"] = "3"
data$Purchased_encoded[data$Purchased == "Yes"] = "0"
data$Purchased_encoded[data$Purchased == "No"] = "1"
View(data)

#4
city <- data$city_encoded
city <- as.numeric(city)
purch <- data$Purchased_encoded
purch <- as.numeric(purch)
df <- data.frame("Country" = city, "Purchased" = purch, stringsAsFactors = FALSE)
df
dfNormZ <- as.data.frame( scale(df[1:2]))
dfNormZ
