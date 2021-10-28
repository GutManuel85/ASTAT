# Aufgabe 7.1
#a)
wkeit_grösser_185 <- 1 - pnorm(q = 185, mean = 180,sd = 7.4)
wkeit_grösser_185
wkeit_zwischen_170_180 <- pnorm(q = 180, mean = 180, sd = 7.4) - pnorm(q=170, mean = 180, sd = 7.4)
wkeit_zwischen_170_180

#b)
quantils_25_75 <- qnorm(p = c(0.25, 0.75), mean = 180, sd = 7.4)
quantils_25_75

#c)
quantil_95 <- qnorm(p = 0.95, mean = 180, sd = 7.4)
quantil_95


#Aufgabe 7.2
#a)
wkeit_ausserhalb_2.5_5 <- pnorm(q = 2.5, mean = 4, sd = 1.25) + (1 - pnorm(q = 5, mean = 4, sd = 1.25))
wkeit_ausserhalb_2.5_5                                                                

#b)
prozent_3_4.5 <- pnorm(q = 4.5, mean = 4, sd = 1.25) - pnorm(q = 3, mean = 4, sd = 1.25)
prozent_3_4.5

#c)
mindestgewicht_0.98 <- qnorm( p = 0.98, mean = 4, sd = 1.25 )
mindestgewicht_0.98
