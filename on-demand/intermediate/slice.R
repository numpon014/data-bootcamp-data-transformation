library(dplyr)

# Select the first 5 rows
slice(mtcars, 1:5)

# Select the first 5 rows using the pipe operator
mtcars %>%
  slice(1:5)

# Select the 6th to 10th rows
mtcars %>%
  slice(6:10)

# Select the 1st, 3rd, and 5th rows
mtcars %>%
  slice(c(1, 3, 5))

# Randomly select 5 rows
mtcars %>%
  slice(sample(nrow(mtcars), 5))