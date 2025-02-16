installed.packages("RPostgreSQL")

library(RPostgreSQL)

# Create a connection to the PostgreSQL database
con <- dbConnect(
  PostgreSQL(),
  dbname = "postgres",
  host = "localhost",
  port = 5432,
  dbname = "postgres")


# Homework
## 1. note taking all stuff we learned today
## 2. nycflights library
## install.packages("nycflights23")