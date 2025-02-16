## Wide vs Long Data Format
## data analyst prefer [LONG format]

## Long Format (Tidy Data)
## [Important] one column, one data type

# Example for wide data format
View(world_bank_pop)

## apply dplyr + tidyr to convert wide to long format
world_bank_pop_long <- world_bank_pop %>%
  filter(indicator == "SP.URB.TOTL") %>%
  pivot_longer(
    cols = `2000`:`2017`,
    names_to = "year",
    values_to = "population") %>%
  View()

# Example for long data format to wide data format
world_bank_pop_wide <- world_bank_pop %>%
  filter(indicator == "SP.URB.TOTL") %>%
  pivot_longer(
    cols = `2000`:`2017`,
    names_to = "year",
    values_to = "population") %>%
  pivot_wider(names_from = "year",
      values_from = "population") %>%
  View()


## read Book1.csv
samsung_sales <- read.csv("Book1.csv")

clean_ss_sales <- samsung_sales %>%
  pivot_longer(cols = S24:S25U,
               names_to = "model",
               values_to = "sales") %>%
  rename(country = Country) %>%
  mutate(model = if_else(model == "S25.", "S25P", model))

write.csv(clean_ss_sales, "clean_data.csv", row.names = F)