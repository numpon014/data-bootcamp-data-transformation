library(readr)

# Read the CSV file
imdb <- read.csv("data/imdb.csv", stringsAsFactors = FALSE)

# Review the structure of the data
glimpse(imdb)

# print head of the data
head(imdb, 10) # print the first 10 rows

# print tail of the data
tail(imdb, 10) # print the last 10 rows