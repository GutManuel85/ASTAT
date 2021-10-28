#Aufgabe 5.4

x <- c(-5, -4, 1, 3, 6)
p <- c(0.3, 0.1,0.1, 0.2, 0.3)
p_mal_x <- x*p
p_mal_x
erwartungswert <- sum(p_mal_x)
erwartungswert


#Aufgabe 5.5

x <- c(2:12)
x
p <- 1/36*c(1,2,3,4,5,6,5,4,3,2,1)
p
erwartungswert <- sum(x*p)
erwartungswert
varianzvektor <- (x-erwartungswert)^2*p
varianzvektor
varianz <- sum(varianzvektor)
varianz
standardabweichung <- sqrt(varianz)
