# dplyr - data manipulation
# dplyr is a package for data manipulation in R.
# It makes data manipulation easier and faster.
# It is a part of the tidyverse package.

# dplyr provides a set of verbs that help to solve the most common data manipulation challenges.
# 1. select: to select columns
# 2. filter: to filter rows
# 3. arrange: to sort datas
# 4. mutate: to create new columns or modify existing columns
# 5. summarise: to summarise data or aggregate data
# 6. group_by: to group data

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