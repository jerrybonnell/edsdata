library(tidyverse)

N <- 500
corr_tibble <- tibble(t = runif(N) * 2 * pi,
                  x = cos(t), # this is why there is some clumping in the endpoints
                  perf = x,
                  null = rnorm(N),
                  quadratic = jitter(x ** 2),
                  linear = x + rnorm(N) / 5,
                  curvy = sin(t),
                  cone = 2 * x + (x + rnorm(N)/3)^2 + rnorm(N)/3) |>
  filter(x > -0.9, x < 0.9) |>
  pivot_longer(c(perf, null, linear, curvy, quadratic, cone),
               names_to = "dataset", values_to = "y") |>
  select(x, y, dataset) |>
  arrange(dataset)

usethis::use_data(corr_tibble, overwrite = TRUE)
