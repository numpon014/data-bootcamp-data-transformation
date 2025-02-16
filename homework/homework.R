# Homework
## 1. note taking all stuff we learned today
## 2. nycflights library
## install.packages("nycflights23")
## write 5 queries to analyze the data
## Data -> 435,352 records

install.packages("nycflights23")

library(nycflights23)

data("flights", package = "nycflights23")
data("airlines", package = "nycflights23")
View(flights)
View(airlines)

# check flights
glimpse(flights)
colnames(flights)
nrow(flights)

# check airlines
glimpse(airlines)
colnames(airlines)
nrow(airlines)

# 1. Top five carriers in September 2023
flights %>%
  filter(month == 9) %>%
  count(carrier,) %>%
  arrange(-n) %>%
  head(5)

# 2. Join Data
flights %>%
  left_join(airlines, by = "carrier") %>%
  select(carrier, name) %>%
  distinct()