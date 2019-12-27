## Question 1

library(dslabs)
data(heights)

sum(ifelse(heights$sex == "Male", 2, 1))

## Question 2

mean(ifelse(heights$height > 72, heights$height, 0))

## Question 3

inches_to_ft <- function(x){
  x <- x/12
  x
}

inches_to_ft(144)

library(tidyverse)

heights_2 <- mutate(heights, inches_to_fit = height/12)
filter(heights_2, inches_to_fit < 5)

## Question 4

