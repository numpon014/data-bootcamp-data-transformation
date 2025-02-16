library(dplyr)

# Read the CSV file
imdb <- read.csv("data/imdb.csv", stringsAsFactors = FALSE)
names(imdb) <- tolower(names(imdb))

# Arrange data - like order by in SQL
imdb %>%
  arrange(length) %>%
  head(10)

# Descending order
imdb %>%
  arrange(desc(length)) %>%
  head(10)

# Multiple columns order
imdb %>%
  filter(!is.na(rating)) %>%
  arrange(rating, desc(length)) %>%
  head(10)