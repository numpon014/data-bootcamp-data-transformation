# dplyr
# select: to select columns
# filter: to filter rows

library(dplyr) # for data manipulation
library(tibble) # for data transformation
# select
# select() is used to select columns from a data frame

# select all columns
View(select(mtcars, everything()))
# select(mtcars,models, 1:5)

## create a new column
mtcars$model <- rownames(mtcars)
View(mtcars)

## move 'model' to the left
select(mtcars, model, 1:5)
m <- select(mtcars, model, everything())
View(m)

## helper verbs to select columns
select(m, starts_with("h"))
select(m, starts_with("a"))
select(m, ends_with("p"))
select(m, contains("a"))

## syntax in tidyverse (dplyr)
## data pipeline %>% (piping)
m %>%
  select(1:5) %>%
  head()

# filter
m %>%
  filter(mpg > 15)


# practice - filter first and then select
m %>%
  filter(mpg > 15 & hp > 240 & wt > 3.8) %>%
  select(model, mpg, hp, wt)

# grepl() is used to search for a pattern in a string return TRUE or FALSE
# filter cars that start with Merc
m %>%
  filter(grepl("^[Merc]", model))

# to exclude the pattern use ^[^pattern]
# not starting with Merc
m %>%
  filter(grepl("^[^Merc]", model))

# and or
m %>%
  select(1:5) %>%
  filter(hp < 100 | disp < 100)
