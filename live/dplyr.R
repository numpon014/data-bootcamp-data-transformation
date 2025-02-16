library(dplyr) # for data manipulation
library(glue) # for string interpolation - template

# data build-ins
data() # list of datasets available in R

# view the data
View(mtcars) # view the data
head(mtcars) # view the first 6 rows of the data
tail(mtcars) # view the last 6 rows of the data


# view structure of the data
glimpse(mtcars) # view the structure of the data
summary(mtcars) # view the summary of the data


# view the dimensions of the data
colnames(mtcars) # view the column names of the data
rownames(mtcars) # view the row names of the data