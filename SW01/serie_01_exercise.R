x <- c(4,2,1,3,3,5,7)
x[3]
x[c(1,4)]
length(x)
y <- x + 2
sum(x+2)
x <= 3
x[x<=3]
sort(x)
order(x)
x[4]
x[4] <- 8
fahrenheit <- c(51.9, 51.8, 51.9, 53)
celsius <- (fahrenheit - 32)*5/9
fahrenheit
celsius
furtherTemp <- c(48, 48.2, 48, 48.7)
differenceTemp <- fahrenheit - furtherTemp
differenceTemp
weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.75, 1.80, 1.65, 1.90, 1.74, 1.91)
bmi <- weight / height^2
bmi
help("order")
seq(0,10)
seq(0,10,2)
seq(from=0,by=2,length.out=6)
x <- c(4, 10, 3, NA, NA, 1, 8)
mean(x)
mean(x, na.rm = TRUE)
sort(x)
sort(x, na.last = TRUE)
sort(x, na.last = FALSE)
sort(x, decreasing = TRUE)
sort(x, decreasing = FALSE)
z <- c(4, 2, 8, 9, 7, 5, 2, 1)
plot(z)
plot(z,
     type = "l",
     col = "blue",
     lty = 1,
     main = "Main Title",
     xlab = "X-Achse",
     ylab = "Y-Achse")
abline(v = 3, col = "green", lty = 1) # h = horizontal
abline(h = 4, col = "red", lty = 3)   # v = vertical
abline(a=1,b=2, col = "brown", lty = 5) # a = Y-Achsenabschnitt, b = Steigung
d.fuel <- read.table(file = "./d.fuel.dat", header = T, sep = ",")
