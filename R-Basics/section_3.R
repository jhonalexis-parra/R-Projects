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

## 4.3 Manipulating data frames
install.packages("tidyverse")
library(tidyverse)

## 4.3.1 Adding a column with mutate
murders <- mutate(murders, rate = total/population * 100000 )
head(murders)

## 4.3.2 Subsetting with filter
filter(murders, rate <= 0.71)

## 4.3.3 Selecting columns with select
new_table <- select(murders, state, region, rate)
filter(new_table, rate <= 0.71)
?filter

## 4.5 The pipe : %>%
murders %>% select(state, region, rate) %>% filter(rate <= 0.71)
16 %>% sqrt()
16 %>% sqrt() %>% log2()
16 %>% sqrt() %>% log(base=2)
