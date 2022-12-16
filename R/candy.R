#' FiveThirtyEight Candy Power Ranking
#'
#' Data behind the story "The Ultimate Halloween Candy Power Ranking".
#' Includes attributes for each candy along with its ranking. For
#' binary variables, `1` = "yes" and `0` = "no".
#'
#' For more information on the dataset, see FiveThirtyEight's
#' story "The Ultimate Halloween Candy Power Ranking"
#'
#'
#' @format A tibble with 85 rows and 13 columns
#' \describe{
#'   \item{competitorname}{Competitor name}
#'   \item{chocolate}{Does it contain chocolate?}
#'   \item{fruity}{Is it fruit flavored?}
#'   \item{caramel}{Is there caramel in the candy?}
#'   \item{peanutalmondy}{Does it contain peanuts, peanut butter or almonds?}
#'   \item{nougat}{Does it contain nougat?}
#'   \item{crispedricewafer}{Does it contain crisped rice, wafers, or a cookie component?}
#'   \item{hard}{Is it a hard candy?}
#'   \item{bar}{Is it a candy bar?}
#'   \item{pluribus}{Is it one of many candies in a bag or box?}
#'   \item{sugarpercent}{The percentile of sugar it falls under within the data set.}
#'   \item{pricepercent}{The unit price percentile compared to the rest of the set.}
#'   \item{winpercent}{The overall win percentage according to 269,000 matchups.}
#' }
#' @source FiveThirtyEight
#' @source <https://github.com/fivethirtyeight/data/tree/master/candy-power-ranking>
#' @source <https://fivethirtyeight.com/videos/the-ultimate-halloween-candy-power-ranking/>
"candy"
