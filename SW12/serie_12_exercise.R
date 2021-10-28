#Aufgabe 12.1

library(MASS)
linear_model = lm(medv ~ lstat + age)
summary(linear_model)
linear_model_complete <- lm(medv ~., data = Boston)
summary(linear_model_complete)
summary(lm(medv ~ lstat:black))
summary(lm(medv ~ lstat*age))
cor(Boston["lstat"], Boston["age"])



#Aufgabe 12.2
library(ISLR)
head(Auto)
auto_name_removed <- within(Auto, rm(name))
head(auto_name_removed)
pairs(auto_name_removed)
round(cor(auto_name_removed), 2)
summary(lm(mpg ~. , data = auto_name_removed))
?Auto
head(Auto)
summary(lm(mpg ~ year*weight, data = auto_name_removed))
