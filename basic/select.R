library(readr)

# Read the CSV file
imdb <- read.csv("data/imdb.csv", stringsAsFactors = FALSE)

# select columns
select(imdb, MOVIE_NAME, RATING) # select columns by name
select(imdb, 1, 5) # select columns by index

# select columns and rename
select(imdb, movie_name = MOVIE_NAME, release_year = YEAR) # rename columns

# pipe operator
# select columns and rename and limit 5 rows
imdb %>%
  select(movie_name = MOVIE_NAME, release_year = YEAR) %>%
  head(5)
