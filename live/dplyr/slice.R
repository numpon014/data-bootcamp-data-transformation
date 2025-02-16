## Slice, Pull, Sample
library(dplyr)

mtcars$model <- rownames(mtcars)
m <- select(mtcars, model, everything())

# sample_n is used to randomly select n rows from a data frame
sample_n(m, 5)


# sample_frac is used to randomly select a fraction of rows from a data frame
sample_frac(m, 0.2)

# slice is used to select rows by position
slice(m, 1:5)

# pull is used to extract a column as a vector
m %>%
  filter(hp > 200) %>%
  pull(model)