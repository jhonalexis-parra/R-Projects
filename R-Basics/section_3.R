## 2.13 Indexing
library(dslabs)
data("murders")

## 2.13.1 Subsetting with logicals
murder_rate <- murders$total/murders$population*100000
ind <- murder_rate <= 0.71
ind
murders$state[ind]
sum(ind)

## 2.13.2 Logical operators
west <- murders$region == "West"
safe <- murder_rate <= 1
west 
safe
ind <- west & safe
murders$state[ind]

## 2.13.3 which
ind <- which(murders$state == "Oklahoma") ## devuelve el indice donde esta oklahoma
ind ## los indices se organizan de menor a mayor
murder_rate[ind]

## 2.13.4 match
ind <- match(c("New York", "Florida", "Texas"), murders$state) ##buscar varios indices 
ind ## los resultados son directos al orden del vector a comparar
murder_rate[ind]

## 2.13.5 %in%
c("Boston", "Dakota", "Washington") %in% murders$state   ## pregunta si los elementos de un vector estan dentro de otro vector
murders$state[10]

