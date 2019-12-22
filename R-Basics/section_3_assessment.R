library(dslabs)
library(tidyverse)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers

head(heights)
avg_height <- mean(heights$height)
ind <- heights$height > avg_height 
sum(ind)

## Question 1
ind_1 <- heights$height > avg_height & heights$sex == "Female"
sum(ind_1)

## Question 2
ind_2 <- heights$sex == "Female"

## Question 3
sum(ind_2) / nrow(heights)

## Question 4
min(heights$height)
ind_3 <- match(c(50), heights$height)
heights$sex[ind_3]

## Question 5
max(heights$height)
x <- min(heights$height):max(heights$height)
length(x)
sum(!(x %in% heights$height))

## Question 6
ht_cm <- heights$height * 2.54
heights2 <- data.frame(heights$sex, heights$height, ht_cm)
heights2
heights2$ht_cm[18]
mean(heights2$ht_cm)

## Question 7
females <- filter(heights2, heights.sex =="Female")
mean(females$ht_cm)

## Question 8
library(dslabs)
data(olive)
head(olive)
x <- olive$palmitic
y <- olive$palmitoleic 
plot(x,y)

## Question 9
hist(olive$eicosenoic)

## Question 10
boxplot(palmitic~region, data=olive)
