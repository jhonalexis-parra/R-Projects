## Data types
a <- 2
class(a)

## 2.4.1 Data frames
install.packages('dslabs')
library(dslabs)
data(murders)
class(murders)

## 2.4.2 Examining an object
str(murders) ##estructura del objeto
head(murders) ##conocer las primeras lineas del objeto

## 2.4.3 The accessor: $ (objeto)$(columna)
murders$state
murders$abb
murders$region
murders$population
murders$total

names(murders) ##nombre de las columnas 

## 2.4.4 Vectors: numerics, characters 
##los vectores tienen una sola columna con datos

pop <- murders$population ##asignar la columna population de murders al vector pop
length(pop) ##cantidad de datos en el vector
class(pop)
class(murders$state)

z <- 3 == 2
z
class(z)

?Comparison ##conocer los comparadores lógicos

class(1L)

## 2.4.5 Factors: datos categoricos

class(murders$region)
levels(murders$region) ##conocer los factores 

region <- murders$region
value <- murders$total

region <- reorder(region, value, FUN= sum) ##suma los valores totales en cada región y organiza de menor a mayor
levels(region)

?reorder

## 2.4.6 List

record <- list(name = "John Doe",student_id = 1234, grades= c(95,82,91,97,93), final_grade ="A") ##tipo diccionario
record
class(record)
record$student_id
record[[3]]
record[[3]]

record2 <- list("John Doe", 1234) ##tipo lista      
record2
record2[[1]]

##2.4.7 Matrices

mat <- matrix(1:12,4,3) ##numeros de 1 a 12 en una matriz de 4 filas por 3 columnas
mat

mat[2,3]
mat[2,]
mat[,2]

mat[1:2,1:2]

as.data.frame(mat)

data("murders")
murders[25,1]
murders[25,]
murders[,2]
