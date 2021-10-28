# Aufgabe 11.1
install.packages("ISLR")

library(ISLR)

head(Auto)
?Auto
lm(mpg ~ horsepower, data = Auto)
summary(lm(mpg ~ horsepower, data = Auto))
plot(mpg ~ horsepower, data = Auto)
abline(lm(mpg ~ horsepower, data = Auto),lwd = 3,
       col = "seagreen")
confint(lm(mpg ~ horsepower, data = Auto), level = 0.95)


#Aufgabe 11.2
library(MASS)
help(Boston)
head(Boston)
attach(Boston)
lm.fit <- lm(medv ~ lstat, data = Boston) 
# y-Achsenabschnitt: Anzahl Eigentumswohnungen 
# x-Achsenabschnitt: Bevölkerungsanteil in Unterschicht
summary(lm.fit)
names(lm.fit)
confint(lm.fit, level = 0.95)
plot(lstat, medv, col = "darkseagreen", pch = 20)
abline(lm.fit, col = "orange", lwd = 3)

