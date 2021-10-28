# Exercise 2.1
winner <- c(191, 185, 185, 182, 182, 188, 188, 188, 185, 185, 177,
            182, 182, 193, 183, 179, 179, 175)
opponent <- c(165, 187, 175, 193, 185, 187, 188, 173, 180, 177, 183,
              185, 180, 180, 182, 178, 178, 173)

length(winner)
length(opponent)
winner[6:11]
winner[c(3,5,10:12)]
winner[6] <- 189
winner[7] <- 189
winner
mean.winner = mean(winner)
mean.opponent = mean(opponent)
mean.winner - meanOpponent
var(winner)
sd(winner)
varianz.manuell = sum((winner - mean.winner)^2)/(length(winner)-1)
varianz.manuell
standard.deviation = sqrt(varianz.manuell)
standard.deviation

# Exercise 2.2
notes.original <- c(4.2, 2.3, 5.6, 4.5, 4.8, 3.9, 5.9, 2.4, 5.9, 6, 4, 3.7, 5, 
                    5.2, 4.5, 3.6, 5, 6, 2.8, 3.3, 5.5, 4.2, 4.9, 5.1)
length(notes.original)
notes.sorted <- sort(notes.original)
notes.sorted
notes.sorted[10] <- 1
notes.sorted[11] <- 1
notes.sorted[14]
notes.sorted[14] <- 5
notes.adapted = notes.sorted
mean(notes.original)
mean(notes.addapted)
notes.addapted
median(notes.original)
median(notes.adapted)
boxplot(notes.original, notes.adapted ,main = "Boxplot notes", col = c("orange", "lightblue")) 
axis(side = 1,at = c(1,2), labels = c("original","adapted"),)

# Exercise 2.3
#Wichtig: Bei Windows immer doppelte Backslashes
setwd("C:\\Users\\Manuel\\OneDrive\\Dokumente\\HSLU\\05_Semester\\ASTAT\\01 Modulunterlagen\\SW02")
mannfrau <- read.csv("mannfrau.csv")
head(mannfrau)
colnames(mannfrau)
height.man <- mannfrau["groesse.mann"]
head(height.man)
height.woman <- mannfrau["groesse.frau"]
head(height.woman)
boxplot(height.man, height.woman, main = "Boxplot height man and woman", col = c("blue", "red"))
axis(side = 1,at = c(1,2), labels = c("man","woman"),)
#Frage: weshalb wird nur Mann geplottet

age.man <- mannfrau["alter.mann"]
age.woman <- mannfrau["alter.frau"]
boxplot(age.man, age.woman, col = c("blue", "red"))
axis(side = 1,at = c(1,2), labels = c("man","woman"),)
#Frage: weshalb wird nur Mann geplottet

boxplot (age.man - age.woman, col = "green")

# Exercise 2.4
#Datensatz in R bereits enthalten
head(InsectSprays)
tapply(InsectSprays[, "count"], InsectSprays[, "spray"], FUN = mean)
attach(InsectSprays)
tapply(count, spray, mean)
