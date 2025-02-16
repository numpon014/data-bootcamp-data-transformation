library(readr)

# Read the CSV file
imdb <- read.csv("data/imdb.csv", stringsAsFactors = FALSE)
names(imdb) <- tolower(names(imdb))

# write the data frame to a CSV file
imdb_prep <- imdb %>%
  select(movie_name, release_year = year, rating, length, score) %>%
  filter(rating == 'R' & release_year >= 2000)

# export the data frame to a CSV file
write_csv(imdb_prep, "data/imdb_prep.csv")