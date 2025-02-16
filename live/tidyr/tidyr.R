# tidyr - is a package for data transformation

install.packages("tidyr") # for data transformation
library(tidyr) # for data transformation

# missing values in R : NA
# aggregate data can not have missing values
num <- c(1:10, NA, 11:15)

# clearn NA in data frame
id <- 1:5
friends <- c("toy", "john", "mary", "anna", "david")
spending <- c(100, 150, NA, 200, 180)

df <- data.frame(id, friends, spending)

# use cases of tidyr
# political perference UAS
# survey n=1000, 300 don't answer about political perference (300 NA)

# clean missing values
df %>%
  replace_na(list(spending = 0)) %>%
  head()

# Hypothesis close firends => avg()
avg_spending <- mean(df$spending, na.rm = TRUE)
median_spend <- median(df$spending, na.rm = TRUE)

# Imputation is the process of replacing missing data with substituted values
# mean imputation
# if number; replace with mean
df %>%
  mutate(spending = replace_na(spending, avg_spending))

## majoirty imputation
# if string; might need to replace with majority like below
# 3 close friends => "nf", so replace NA with "nf" as majority
df %>%
  mutate(spending = replace_na(spending, avg_spending)) %>%
  mutate(service = c("nf", "nf", "nf", "amz", "nf"))



