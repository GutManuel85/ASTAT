# Zufallszahlen generieren
zufallszahlen <- rnorm(n=1, mean=5, sd=2)

# Mittelwert der generierten Zahlen berechnen zur Prüfung
zufallszahlen
mean(zufallszahlen)

# Vertrauensinterfalle
q_u <- qnorm(p = c(0.025), mean = zufallszahlen, sd = 2)
q_u
q_o <- qnorm(p = c(0.975), mean = zufallszahlen, sd = 2)
q_o

# Code, der zählt, wie oft 5 im Vertrauensintervall der generierten Zufallszahlen liegt:
vi2 <- function(n) {
  r <- rnorm(n = n, mean = 5, sd = 2)
  q_u <- qnorm(p = c(0.025), mean = r, sd = 2)
  q_o <- qnorm(p = c(0.975), mean = r, sd = 2)
  k <- 0
  for (i in 1:n) {
    if ((q_u[i] <= 5 & 5 <= q_o[i]) == FALSE) {
      k <- k + 1
    }
  }
  cat(k, " ")
}
for (i in 1:20) {
  vi2(1000)
}

# Aufgabe 10.2
messung_A <- c(120, 265, 157, 187, 219, 288, 156, 205, 163)
messung_B <- c(127, 281, 160, 185, 220, 298, 167, 203, 171)

t.test(messung_A, messung_B, alternative="less", paired=TRUE, conf.level = 0.95)

# Aufgabe 10.3
maennlich <- c(120, 107, 110, 116, 114, 111, 113, 117, 114, 112)
weiblich <- c(110, 111, 107, 108, 110, 105, 107, 106, 111, 111)

t.test(maennlich, weiblich, alternative = "two.side", paired=FALSE, conf.level = 0.95)

wilcox.test(maennlich, weiblich, exact = FALSE)


# Aufgabe 10.4
rind <- c(186, 181, 176, 149, 184, 190, 158, 139, 175, 148, 152, 111, 141, 153, 190, 157, 131, 149, 135, 132)
gefluegel <- c(129, 132, 102, 106, 94, 102, 87, 99, 170, 113, 135, 142, 86, 143, 152, 146, 144)
mean(rind)
mean(gefluegel)

wilcox.test(rind, gefluegel, exact = FALSE)

# Aufgabe 10.5
zuerich <- c(16.3, 12.7, 14.0, 53.3, 117, 62.6, 27.6)
basel <- c(10.4, 8.91, 11.7, 29.9, 46.3, 25.0, 29.4)
mean(zuerich)
mean(basel)
sd(zuerich)
sd(basel)
t.test(zuerich, basel, alternative = "greater", paired = TRUE)

wilcox.test(zuerich, basel, alternative = "greater", paired = TRUE)

#Unterschied gepaart oder ungepaart:
wilcox.test(zuerich, basel, alternative = "greater", paired = FALSE)
