library(readr)

# Read the CSV file
imdb <- read.csv("data/imdb.csv", stringsAsFactors = FALSE)
names(imdb) <- tolower(names(imdb))

# Create a new column
imdb %>%
  select(movie_name, score) %>%
  mutate(score_group = if_else(score >= 9.0, "High Rating", "Low Rating")) %>%
  head(5)

# Create multiple new columns
imdb %>%
  select(movie_name, score, length) %>%
  mutate(
    score_group = if_else(score >= 9.0, "High Rating", "Low Rating"),
    length_group = if_else(length > 120, "Long Film", "Short Film")
  ) %>%
  head(5)

# Replace existing column
imdb %>%
  select(movie_name, score) %>%
  mutate(score = score + 0.1) %>%
  head(5)

# Create a new column using case_when
imdb %>%
  mutate(score_group = case_when(
    score >= 9.0 ~ "High Rating",
    score < 9.0 ~ "Low Rating"
  ))