# dplyr - summarize: to summarize data
library(dplyr) # for data manipulation

mtcars$model <- rownames(mtcars)
m <- select(mtcars, model, everything())

# summarize data
# n = number of rows
m %>%
  select(model, am, hp) %>%
  summarize(
    avg_hp = mean(hp),
    sum_hp = sum(hp),
    med_hp = median(hp),
    sd_hp = sd(hp),
    var_hp = var(hp),
    n = n()
  ) %>%
  head()

# summarize data by group
m %>%
  select(model, am, hp) %>%
  mutate(
    am = if_else(am == 0, "auto", "manual")
  ) %>%
  group_by(am) %>%
  summarize(
    avg_hp = mean(hp),
    sum_hp = sum(hp),
    med_hp = median(hp),
    sd_hp = sd(hp),
    var_hp = var(hp),
    n = n()
  ) %>%
  head()