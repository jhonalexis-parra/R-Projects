## Section 1 assessment

##Question 1:

a <- 2
b <- -1
c <- -4

x1 <- (-b + sqrt(b^2 - 4*a*c )) / (2*a)
x2 <- (-b - sqrt(b^2 - 4*a*c )) / (2*a)
print("El valor de x1 es: ")
print(x1)
print("El valor de x2 es: ")
print(x2)

##Question 2_

log(1024, base=4)

##Question 3:
library(dslabs)
data("movielens")
str(movielens)
nlevels(movielens$genres)
