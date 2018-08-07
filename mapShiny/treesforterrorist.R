data <- read.csv(file = "/Users/dishaan/Documents/Academic/FE550/Assignments/FE550IndividualProject/2012-2015Analysis/data2012_2015.csv")
library(party)
head(data)
data <- data[complete.cases(data),]
tree_kill <- ctree(nkill~region_txt + weaptype1_txt, data = data)
plot(tree_kill)

library(rpart)
library(rpart.plot)
test1 <- rpart(region_txt~attacktype1_txt+targtype1_txt, data = data)
rpart.plot(test1)

test2 <- rpart(region_txt~attacktype1_txt+targtype1_txt+weaptype1_txt, data = data)
rpart.plot(test2)

test3 <- rpart(region_txt~targtype1_txt+weaptype1_txt, data = data)
rpart.plot(test3)

test4 <- rpart(region_txt~targtype1_txt+weaptype1_txt+natlty1_txt, data = data)
rpart.plot(test4)