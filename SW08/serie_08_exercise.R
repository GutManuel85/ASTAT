#Aufgabe 8.1
#a) 
mittelwert <- 8.2
sd_durchschnittliche_Zufallsvariabel <- 6/sqrt(36) 
wkeit <- pnorm(q=10, mean=mittelwert, sd = sd_durchschnittliche_Zufallsvariabel)
wkeit
#Die Wahrscheinlichkeit, dass die Wartezeit unter 10 Minuten liegt ist bei 96%

#b)
wkeit <- pnorm(q=10, mean=mittelwert, sd = sd) - pnorm(q=5, mean=mittelwert, sd=sd)
wkeit

#c)
wkeit <- 1 - pnorm(q=20, mean = mittelwert, sd = sd)
wkeit

#Aufgabe 8.2
wkeit <- 1 - pnorm(q = 3.1 , mean = 2.2, sd = 0.3/sqrt(100))
wkeit

#Aufgabe 8.3
mean <- 77
sd <- 15/sqrt(25)
wkeit_zwischen72und82_mit25Teilnehmern <- pnorm(q = 82, mean = mean, sd = sd)- pnorm(q = 72, mean = mean, sd = sd)
wkeit_zwischen72und82_mit25Teilnehmern

sd <- 15/sqrt(64)
wkeit_zwischen72und82_mit64Teilnehmern <- pnorm(q = 82, mean = mean, sd = sd)- pnorm(q = 72, mean = mean, sd = sd)
wkeit_zwischen72und82_mit64Teilnehmern
