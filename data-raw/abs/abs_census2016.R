library(tidyverse)

abs_census2016_org <- read_csv("data-raw/abs/abs_census_2016_education_territory.csv")
abs_census2016 <- abs_census2016_org %>%
  pivot_longer(`New South Wales`:`Australian Capital Territory`,
               names_to = "Region", values_to="Count") %>%
  group_by(Region) %>%
  mutate(`Percent (%)` = (Count/sum(Count)) * 100) %>%
  ungroup() %>%
  rename(`Territory/State` = Region)

usethis::use_data(abs_census2016, overwrite = TRUE)
