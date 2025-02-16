# dplyr
# mutate: to create new columns or modify existing columns

library(dplyr) # for data manipulation

mtcars$model <- rownames(mtcars)
m <- select(mtcars, model, everything())

m %>%
  select(model, hp, wt) %>%
  mutate(hp_double = hp * 2,
         hp_halve = hp / 2,
         hp_add_five = hp + 5,
         new = hp / wt,
         new2 = hp + wt) %>%
  head()


# If-else create new segment column
# case_when() is a more flexible version of if_else()
m %>%
  select(model, hp) %>%
  mutate(segment = if_else(hp > 200,
                           "high",
                           "low")) %>%
  mutate(segment2 = case_when(
    hp > 200 ~ "high",
    hp > 100 ~ "medium",
    TRUE ~ "low"
  )) %>%
  head()



