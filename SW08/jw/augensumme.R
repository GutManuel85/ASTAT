Augensumme <- function (wuerfe) {
  x <- sample (c (1, 2, 3, 4, 5, 6), size = wuerfe, replace = T)
  s = sum (x)
  return (s)
}

Experiment <- function (wiederholungen, wuerfe) {
  haeufigkeit <- c ()
  for (i in 1 : wiederholungen) {
    haeufigkeit [i] = Augensumme (wuerfe)
  }
  return (haeufigkeit)
}

hist (Experiment (1000, 10))
