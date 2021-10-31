rules <- apriori(Groceries, parameter = list(supp = 0.02, conf = 0.05))

inspect(rules[1:10])

arules::itemFrequencyPlot(Groceries, topN = 20, 
                          main = '20 items with highest frequency',
                          type = "relative",
                          ylab = "Item Frequency")