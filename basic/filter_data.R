library(readr)

# Read the CSV file
imdb <- read.csv("data/imdb.csv", stringsAsFactors = FALSE)

# Filter Data
filter(imdb, SCORE >= 9.0)

# Filer data by pipe operator
imdb %>% filter(SCORE >= 9.0)

# print column names
names(imdb)

# convert column names to lower case
names(imdb) <- tolower(names(imdb))

# filter by multiple conditions using AND operator
imdb %>%
  select(movie_name, year, score) %>%
  filter(score >= 9.0 & year > 2000)

# filter by multiple conditions using OR operator
imdb %>%
  select(movie_name, year, score) %>%
  filter(score == 8.8 | score == 8.3 | score == 9.0)

# filter by multiple conditions using %in% operator
imdb %>%
  select(movie_name, year, score) %>%
  filter(score %in% c(8.8, 8.3, 9.0))