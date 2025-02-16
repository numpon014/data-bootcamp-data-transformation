library(readr)

# Read the CSV file
imdb <- read.csv("data/imdb.csv", stringsAsFactors = FALSE)
names(imdb) <- tolower(names(imdb))

favorite_films <- data.frame(id = c(5, 10, 25, 30, 98))

# Join the two data frames -
# by the 'id' from favorite_films and 'no' from imdb
favorite_films %>%
  inner_join(imdb, by = c("id" = "no"))