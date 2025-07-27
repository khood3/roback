##Question I.1
message('a) p = (y/2)^2*a')
message('b) p = a^(2theta)/y')

##Question I.2
pResidentFunc <- function(y,a) {
  z <- a*(y/2)^2
  return(z)
}
pFirmFunc <- function(y,a,theta) {
  z <- a^(2*theta)/y
  return(z)
}
pFirmFunc(2,1,0)

##Question II.1
print(pResidentFunc(2,2))
print(pFirmFunc(2,2,0))

##Question II.2
print(pResidentFunc(4,2))
print(pFirmFunc(4,2,0))

##Question II.3
print(pResidentFunc(1.26,2))
print(pFirmFunc(1.26,2,0))
##Note that this last one means we are in equilibrium! (Since p and y are the same on the isoprofit and indifference curves).


##Question III/IV
##Case where theta = .1 (amenity makes firm more productive)
#real-estate prices increase and incomes decrease

thet <- .1
a <- 1
plot(x = seq(1,4,.01), y = pFirmFunc(seq(1,4,.01), a,thet), type = 'l', col = 'blue',xlab = '', ylab = '')
lines(x = seq(1,4,.01), y = pResidentFunc(seq(1,4,.01), a), type = 'l', col = 'red')

a <- 1.5
lines(x = seq(1,4,.01), y = pFirmFunc(seq(1,4,.01), a,thet), type = 'l', col = 'blue', lty = 2)
lines(x = seq(1,4,.01), y = pResidentFunc(seq(1,4,.01), a), type = 'l', col = 'red', lty = 2)
title(main = 'thet = .1', xlab = 'y', ylab = 'p')

cat ("Press [enter] to continue")
line <- readline()

##Case where theta = 0 (amenity doesn't impact firm productivity)
#real-estate prices increase and incomes decrease
thet <- 0
a <- 1
plot(x = seq(1,4,.01), y = pFirmFunc(seq(1,4,.01), a,thet), type = 'l', col = 'blue',xlab = '', ylab = '')
lines(x = seq(1,4,.01), y = pResidentFunc(seq(1,4,.01), a), type = 'l', col = 'red')

a <- 1.5
lines(x = seq(1,4,.01), y = pFirmFunc(seq(1,4,.01), a,thet), type = 'l', col = 'blue', lty = 2)
lines(x = seq(1,4,.01), y = pResidentFunc(seq(1,4,.01), a), type = 'l', col = 'red', lty = 2)
title(main = 'thet = 0', xlab = 'y', ylab = 'p')

invisible(readline(prompt="Press [enter] to continue"))

##Case where theta = -.1 (amenity makes firm less productive)
#real-estate prices increase and incomes decrease
thet <- -.1
a <- 1
plot(x = seq(1,4,.01), y = pFirmFunc(seq(1,4,.01), a,thet), type = 'l', col = 'blue',xlab = '', ylab = '')
lines(x = seq(1,4,.01), y = pResidentFunc(seq(1,4,.01), a), type = 'l', col = 'red')

a <- 1.5
lines(x = seq(1,4,.01), y = pFirmFunc(seq(1,4,.01), a,thet), type = 'l', col = 'blue', lty = 2)
lines(x = seq(1,4,.01), y = pResidentFunc(seq(1,4,.01), a), type = 'l', col = 'red', lty = 2)
title(main = 'thet = -.1', xlab = 'y', ylab = 'p')

##In all of these cases, incomes decrease and real-estate increase. This is consistent with the finding in the chapter (and in Brueckner 11.1) that when amenities have a small impact on firm amenities, real-estate prices increase and incomes decrease. 

