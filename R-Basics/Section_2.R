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

## 2.7.1
