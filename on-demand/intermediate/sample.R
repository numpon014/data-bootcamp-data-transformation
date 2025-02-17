# sample_n

sample_n(mtcars, 5)
sample_n(mtcars, 5)

# to lock the random seed
# need to run both the lines together
set.seed(25)
sample_n(mtcars, 5)

set.seed(25)
sample_n(mtcars, 5)

# sample_frac
# True means with replacement
# 0.5 means 50% of the data
sample_frac(mtcars, 0.5, replace = TRUE)