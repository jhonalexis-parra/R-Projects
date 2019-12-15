# 2.2.1 Objects

a <- 2
b <- -1
c <- -4

x1 <- (-b + sqrt(b^2 - 4*a*c )) / (2*a)
x2 <- (-b - sqrt(b^2 - 4*a*c )) / (2*a)
print("El valor de x1 es: ")
print(x1)
print("El valor de x2 es: ")
print(x2)

# 2.2.2 The workspace
ls() #lista de variables del ambiente

# 2.2.3 Functions
log (8)
log (a)
help ("log")
?log
args(log)
exp(2.023)
exp(log(8))
log (8, base = 2)
log (8,2)
log (base = 2, x = 8)
2^3
?"^"  # se puede utilizar con cualquier operador matemático
help("+")


# 2.2.4 Othe prebuilt objects
data() #bases de datos disponibles
co2 #muestras los datos de la base de datos directamente
pi
Inf+1



