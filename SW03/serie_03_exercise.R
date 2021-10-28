#Aufgabe 3.1 a)
# Datensatz einlesen
setwd("C:\\Users\\Manuel\\OneDrive\\Dokumente\\HSLU\\05_Semester\\ASTAT\\01 Modulunterlagen\\SW03")
geysir <- read.table("geysir.dat", header = TRUE)

# 4 Graphiken im Graphikfenster
par(mfrow = c(2,2)) #Ermöglicht das darstellen von 2x2 Plots
hist(geysir[, "Zeitspanne"])
hist(geysir[, "Zeitspanne"], breaks = 20)
hist(geysir[, "Zeitspanne"], breaks = seq(41, 96, by = 11))

#Aufgabe 3.1 b)
hist(geysir[, "Eruptionsdauer"])

#Aufgabe 3.2
mannfrau <- read.csv(("mannfrau.csv"))
head(mannfrau)
plot(mannfrau$groesse.mann, #mit Dollarzeichen kann auf eine Spalte einer Tabelle zugegriffen werden
     mannfrau$groesse.frau,
     col = "lightblue",
     pch = 16)
abline(lm(mannfrau$groesse.frau~mannfrau$groesse.mann),
       lwd = 3,
       col = "seagreen")

#Bestimmen der Koeffizienten in Regressionsgeraden
lm(mannfrau$groesse.frau ~ mannfrau$groesse.mann) #lm steht für linear modell. Zuerst kommt y, dann x.

#Aufgabe 3.3
#a)
setwd("C:\\Users\\Manuel\\OneDrive\\Dokumente\\HSLU\\05_Semester\\ASTAT\\01 Modulunterlagen\\SW03")
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

#Schulbildung und Einkommen
plot(income$Educ,
     income$Income2005,
     col = "red",
     pch = 16)
abline(lm(income$Income2005~income$Educ),
       lwd = 4,
       col = "blue")

#b)
lm(income$Income2005~income$Educ)

#Aufgabe 3.4
head(anscombe)

par(mfrow = c(2,2))

plot(anscombe$x1,anscombe$y1)
abline(lm(anscombe$y1~anscombe$x1))


plot(anscombe$x2,anscombe$y2)
abline(lm(anscombe$y2~anscombe$x2))


plot(anscombe$x3,anscombe$y3)
abline(lm(anscombe$y3~anscombe$x3))


plot(anscombe$x4,anscombe$y4)
abline(lm(anscombe$y4~anscombe$x4))


lm(anscombe$y1~anscombe$x1)
lm(anscombe$y2~anscombe$x2)
lm(anscombe$y3~anscombe$x3)
lm(anscombe$y4~anscombe$x4)

