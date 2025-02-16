## chinook db
## Create a connection to the chinook database
installed.packages("RSQLite")

library("RSQLite")
library("dplyr")

con <- dbConnect(RSQLite::SQLite(), "live/database/chinook.db")

dbListTables(con)
dbListFields(con, "customers")

# Query the database
dbGetQuery(con, "SELECT * FROM customers LIMIT 5")
dbGetQuery(
  con,
  "SELECT firstname, email, country FROM customers WHERE country = 'USA'") %>%
  head()

# Write a new table
dbWriteTable(con, "mtcars", mtcars, overwrite = TRUE)

mini_df <- mtcars %>% select(mpg, hp, wt) %>% filter(hp > 20)
dbWriteTable(con, "model", mini_df)

# Read the new table
dbListTables(con)
dbGetQuery(con, "SELECT * FROM model LIMIT 5")

# Delete the new table
dbRemoveTable(con, "model")
dbRemoveTable(con, "mtcars")

## Close the connection
dbDisconnect(con)