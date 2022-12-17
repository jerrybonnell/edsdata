library(tidyverse)

csc1234 <- read_csv("data-raw/csc1234/csccourse1.csv")

usethis::use_data(csc1234, overwrite = TRUE)
