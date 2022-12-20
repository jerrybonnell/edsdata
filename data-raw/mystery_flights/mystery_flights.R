library(tidyverse)
library(nycflights13)

early_delays <- sample(filter(flights, dep_delay < 0)$dep_delay)

my_func <- function(ID, dep_delay) {
  return(if_else(ID %% 2 == 0,
                 early_delays[ID],
                 dep_delay))
}

mystery_flights <- flights %>%
  mutate(ID = row_number(),
         dep_delay = pmap(list(ID, dep_delay), my_func)
  ) %>%
  unnest()
mystery_flights

usethis::use_data(mystery_flights, overwrite = TRUE)
