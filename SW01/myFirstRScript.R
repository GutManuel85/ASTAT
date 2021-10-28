1+1
2*4
exp(3)
#This is a commen
a <- 3
b <- 3*a
b
a/b
c <- c(3,4,5)
d <- c(4,5,2)
d
mixed <- c(4, 'string', 5.3)
mixed
zahlen1bis5 <- 1:5
zahlen1bis5
zahlenMinus3Bis4 <- -3:4
zahlenMinus3Bis4
c + d
4*c
c*d
mean(c)
c
x <- c(7,8,9,10)
mean(x)
min(x)
max(x)
length(x)
length(mixed)
mixed[2]
mixed[1]
mixed
# to receive more than one component of the vector mixed you have to give in...
# ...a vector with the indexes of the component, which should be shown
mixed[c(1,3)]
z_3 <- c(5,2,NA, 4)
min(z_3)
#option "not available remove"
min(z_3, na.rm=TRUE)
min(z_3, na.rm=FALSE)
#Help to see which options a command has. Look at the lower pannel at the right
?min
temp <- read.csv("weather.csv")
temp
tempNex <- read.table("weather.csv")
tempNex
tempNexAgain <- read.table("weather.csv", header = T)
tempNexAgain
tempNexCorrect <- read.table("weather.csv", sep=",")
tempNexCorrect
#gives the number of rows and the number of columns
dim(temp)
#get the column names
colnames(temp)
#get the row names
rownames(temp)
#first overview of the table
summary(temp)
#get the value in the second row and the forth column
temp[2,4]
#get the value in May from Basel
temp["May", "Basel"]
#get the column Basel
temp["Basel"]
#calculate the mean of a column
mean(temp[,"Luzern"])
#save data with default "comma separated"
temp1 <- temp[c("Jan", "May"), c("Chur","Zurich")]
temp1
write.csv(temp1, file = "weather1.csv")
#A example for a plot
color <- c('green', 'blue', 'red', 'brown')
matplot(temp, col = color, type = "l", lty = 1)
legend(x=1, y = 25, legend = colnames(temp), col = color, lty = 1)

