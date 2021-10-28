# Aufgabe 9.1
messung <- c(71, 69, 67, 68, 73, 72, 71, 71, 68, 72, 69, 72)
sd <- 1.5
mean_messung <- mean(messung)
mean_messung
n <- length(messung)
#Verwerfungsbereich für Teststatistik
verwerfungsbereich_einseitig_rechts <- qnorm(p=0.05, mean=70, sd=sd/sqrt(n))
verwerfungsbereich_einseitig_rechts
if(verwerfungsbereich_einseitig_rechts<=mean_messung){
  "ok"
}else{
  "nok"
}


# Einschub: Messreihe simulieren
set.seed(9)
for(i in 1:10){
  simulation1 <- round(rnorm(n=12, mean=70, sd=1.5),2)
  simulation1
  mean <- mean(simulation1)
  mean
  sd <- sd(simulation1)
  cat(round(mean,2), round(sd),4,"\n")
}

# Aufgabe 9.2
#a)
t.test(messung, mu=70, alternative="greater") #mu = Soll-Mean-Wert
#b)
pnorm(q=mean_messung, mean=70, sd=sd/sqrt(n)) #ergibt die W'keit, dass 70.25 im Z-test confidence interval liegt
#ist grösser als beim t-test, da da noch die Unsicherheit wegen unbekannter sd hinzukommt

# Aufgabe 9.3
# a)
sd <- 3
n <- 16
messung <- c(46, 48, 52, 49, 46, 51, 52, 47, 49, 44, 48, 51, 49, 50, 53, 47)
mean.messung <- mean(messung)
mean.messung
mean0 = 50
verwerfungsbereich.einseitig.rechts <- qnorm(p=0.05, mean=mean0, sd=sd/sqrt(n))
verwerfungsbereich.einseitig.rechts
if(verwerfungsbereich.einseitig.rechts>=mean.messung){
  "nok"
}else{
  "ok"
}
#oder so:
wkeit.0Hyptothese.ok <- pnorm(q=mean.messung, mean=mean0, sd=sd/sqrt(n))
wkeit.0Hyptothese.ok
if(wkeit.0Hyptothese.ok>=0.05){ #0.05 anstatt 0.25 da einseitiger Test
  "ok"
}else{
  "nok"
} 

#b)
wkeit.0Hyptothese.ok.100Messungen <- pnorm(q=mean.messung, mean=mean0, sd=sd/sqrt(100))
wkeit.0Hyptothese.ok.100Messungen

#c)
t.test(messung, mu=50, alternative="less")
