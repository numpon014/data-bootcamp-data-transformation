library(readr)

# Read the CSV file
imdb <- read.csv("data/imdb.csv", stringsAsFactors = FALSE)
names(imdb) <- tolower(names(imdb))

# Summarize data
imdb %>%
  summarize(
    mean_length = mean(length),
    sd_length = sd(length),
    min_length = min(length),
    max_length = max(length),
    sum_length = sum(length),
    n = n() # number of rows
  )

# Summarize data and Group by
imdb %>%
  group_by(rating) %>% # group by rating
  summarize(
    mean_length = mean(length),
    sd_length = sd(length),
    min_length = min(length),
    max_length = max(length),
    sum_length = sum(length),
    n = n() # number of rows
  )

# Summarize data and Group by with filter
imdb %>%
  filter(rating != "") %>% # remove NA values
  group_by(rating) %>% # group by rating
  summarize(
    mean_length = mean(length),
    sd_length = sd(length),
    min_length = min(length),
    max_length = max(length),
    sum_length = sum(length),
    n = n() # number of rows
  )