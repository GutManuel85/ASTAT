

#Aufgabe 4.1
setwd("C:\\Users\\Manuel\\OneDrive\\Dokumente\\HSLU\\05_Semester\\ASTAT\\01 Modulunterlagen\\SW03")
geysir <- read.table("geysir.dat", header = TRUE)
head(geysir)
plot(geysir$Zeitspanne, geysir$Eruptionsdauer)
cor(geysir$Zeitspanne, geysir$Eruptionsdauer)

mannfrau <- read.csv(("mannfrau.csv"))
head(mannfrau)
plot(mannfrau$groesse.mann, #mit Dollarzeichen kann auf eine Spalte einer Tabelle zugegriffen werden
     mannfrau$groesse.frau,
     col = "lightblue",
     pch = 16)
abline(lm(mannfrau$groesse.frau~mannfrau$groesse.mann),
       lwd = 3,
       col = "seagreen")
cor(mannfrau$groesse.mann, mannfrau$groesse.frau)

income <- read.table("income.dat", header = TRUE)
head(income)
#AFQT und Einkommen
plot(income$AFQT,
     income$Income2005,
     col = "red",
     pch = 16)
abline(lm(income$Income2005~income$AFQT),
       lwd = 4,
       col = "blue")
cor(income$AFQT,
    income$Income2005)
#Schulbildung und Einkommen
plot(income$Educ,
     income$Income2005,
     col = "red",
     pch = 16)
abline(lm(income$Income2005~income$Educ),
       lwd = 4,
       col = "blue")
lm(income$Income2005~income$Educ)
cor(income$Educ,income$Income2005)

#Aufgabe 4.2
setwd("C:\\Users\\Manuel\\OneDrive\\Dokumente\\HSLU\\05_Semester\\ASTAT\\01 Modulunterlagen\\SW04")
par(mfrow = c(1,2)) #Ermöglicht das darstellen von 1x2 Plots
t.x <- c(-10:10)
t.x
t.x1 <- c(0:10)
t.x1
t.y <- t.x^2
t.y
t.y1 <- t.x1^2
t.y1
plot(t.x, t.y)
plot(t.x1, t.y1)
cor(t.x,t.y)
cor(t.x1, t.y1)

#Aufgabe 4.5
library(MASS)
P_A = 3/4
P_B = 2/3
fractions(P_A)
