# dplyr - arrange: to sort datas
library(dplyr) # for data manipulation

mtcars$model <- rownames(mtcars)
m <- select(mtcars, model, everything())

# arrange by 'model' in descending order (Z-A)
m %>%
  select(model, am, hp) %>%
  arrange(desc(model)) %>%
  head()

# arrange by 'am' in ascending order (A-Z),
# then by 'hp' in descending order (high to low)
m %>%
  select(model, am, hp) %>%
  arrange(am, hp) %>%
  head()

