library(readr)

# Read the CSV file
imdb <- read.csv("data/imdb.csv", stringsAsFactors = FALSE)
names(imdb) <- tolower(names(imdb))

# Filter data by string - exact match
imdb %>%
  select(movie_name, genre, rating) %>%
  filter(rating == "PG-13")

# Filter data by string use grepl function
# grepl function is used to search for a pattern in a string
# grepl is case sensitive
imdb %>%
  select(movie_name, genre, rating) %>%
  filter(grepl("King", imdb$movie_name))

imdb %>%
  select(movie_name, genre, rating) %>%
  filter(grepl("Drama", imdb$genre))

imdb %>%
  select(movie_name, genre, rating) %>%
  filter(grepl("Drama|Action", imdb$genre))