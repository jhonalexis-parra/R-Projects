## Vectors

## 2.6.1 Creating vectors
codes <- c(380, 124, 818)
codes

country <- c("italy", "canada", "egypt") ## es posible utilizar doble comilla
cpuntry <- c('italy', 'canda', 'egypt') ## es posible utilizar comilla simple


## 2.6.2 Names
codes <- c(italy = 380, canada = 124, egypt = 818) ## agregar nombres a los valoresk similar a los diccionarios de python
codes

class(codes)
names(codes)

codes <- c("italy" = 380, "canada" = 124, "egypt" = 818)
class(codes)

codes <- c(380, 124,818)
country <- c ("italy", "canada", "egypt")
names(codes)<- country
codes

## 2.6.3 Sequences
seq(1,10)

?seq

seq(1,10,2)

1:10
class(1:10)
class(seq(1,10,0.5))

seq## 2.6.4 Subsetting ## acceder a vectores 

codes[2]
codes[c(1,3)]
codes[1:2]
codes["canada"]
codes[c("egypt", "italy")]

## 2.7 Coercion
x <- c(1, "canada", 3)
x
class(x)

x <- 1:5 
class(x)
y <- as.character(x) ## convertir a caracter
y
as.numeric(y)

## 2.7.1 Valores faltantes

x <- c("1", "b", "3")
as.numeric(x)

## 2.9 Sorting


## 2.9.1 sort
library(dslabs)
data(murders)
sort(murders$total)##ordena de menor a mayor los datos


## 2.9.2 order
x <- c(31,4,15,92,65)
sort(x)

index <- order(x)
x[index]

x
order(x) ##ordena por posición de vector de menor a mayor

murders$state[1:6]
murders$abb[1:6]

ind <- order(murders$total)
ind
murders$abb[ind]

## 2.9.3 max and which.max

max(murders$total)
min(murders$total)

i_max <- which.max(murders$total)
i_min <- which.min(murders$total)
murders$state[i_max]
murders$state[i_min]

## 2.9.4 rank
## asigna el ranking en la posición de menor a mayor

x <- c(31,4,15,92,65)
rank(x)

## 2.9.5 Beware of recycling
x <- c(1,2,3)
y <- c(10,20,30,40,50,60,70)
x+y
