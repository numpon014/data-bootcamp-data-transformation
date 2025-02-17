# install.packages("tidyverse")
# dpylr tidyr ggplot2
library(tidyverse)


# data.frame vs tibble
df_tribble <- tibble(id = 1:3, name = c("toy", "jisoo", "lisa"))
class(df_tribble)
df_tribble

df_df <- data.frame(id = 1:3, name = c("toy", "jisoo", "lisa"))
df_df

# convert data.frame to tibble
mtcars
mtcars_tibble <- tibble(mtcars)
mtcars_tibble