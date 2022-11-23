library(tidyverse)

# Data manually parsed from Wikipedia long jump results page
longjump <- read_csv("data-raw/longjump/long-jump-london-2012.csv")

usethis::use_data(longjump, overwrite = TRUE)
