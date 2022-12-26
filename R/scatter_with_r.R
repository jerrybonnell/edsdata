
#' Title
#'
#' @param r
#'
#' @return ggplot object
#' @export
#'
#' @examples `scatter_with_r(0.5)`
scatter_with_r <- function(r) {
  x <- rnorm(10000)
  z <- rnorm(10000)
  y = r*x + (sqrt(1-r**2))*z
  g <- tibble(x = x, y = y) %>%
    ggplot() +
    geom_point(aes(x = x, y = y), color = "darkcyan", alpha = 0.8) +
    xlab("") +
    ylab("")
  return(g)
}

usethis::use_r("scatter_with_r")
