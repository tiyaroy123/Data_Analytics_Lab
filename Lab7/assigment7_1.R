#a
install.packages("arules")
install.packages("arulesViz")
library(arules)
library(arulesViz)
data("Groceries")

#b
rules <- apriori(Groceries, parameter = list(supp = 0.01, conf = 0.08))

#c
inspect(rules[1:10])

#d
arules::itemFrequencyPlot(Groceries, topN = 20, 
                          main = '20 items with highest frequency',
                          type = "relative",
                          ylab = "Item Frequency")
