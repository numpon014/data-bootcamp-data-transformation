## Live - Data Transformation

## install mandatory packages
# install.packages("dplyr", "glue")

library(dplyr) # for data manipulation
library(glue) # for string interpolation - template

# string interpolation
my_name <- "Numpon"
my_age <- 40

text <- glue("My name is {my_name} and I am {my_age} years old.")
print(text)

