library(dplyr)

mtcars$model <- rownames(mtcars)
m <- select(mtcars, model, everything())

# Rename columns
m %>%
  select(model, hp, wt) %>%
  rename(horsepower = hp, weight = wt) %>%
  head()
