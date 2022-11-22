#' Unemployment and median household income for the U.S., States, and counties, 2000-2021
#'
#' County-level data on annual average unemployment and median
#' household income in the U.S. Derived from the U.S. Department
#' of Agriculture ERS (Economic Research Service).
#'
#' @format A tibble with 3,277 rows and 96 columns
#' \describe{
#'   \item{FIPS_code}{State-county Federal Information Processing Standards (FIPS) code}
#'   \item{State}{State abbreviation}
#'   \item{Area_name}{State or county name}
#'   \item{Rural_urban_continuum_code_2013}{Rural-urban Continuum Code in 2013}
#'   \item{Urban_influence_code_2013}{Urban Influence Code in 2013}
#'   \item{Metro_2013}{`0`=Nonmetro `1`=Metro (2013 OMB Metropolitan Area delineation)}
#'   \item{Civilian_labor_force_`X`}{Civilian labor force annual average in year `X`}
#'   \item{Employed_`X`}{Number employed annual average in year `X`}
#'   \item{Unemployed_`X`}{Number unemployed annual average in year `X`}
#'   \item{Unemployment_rate_`X`}{Unemployment rate in year `X`}
#'   \item{Median_Household_Income_2019}{Estimate of median household income in 2020}
#'   \item{Med_HH_Income_Percent_of_State_Total_2020}{County household median income as a percent of the State total median household income in 2020}
#' }
#' @source U.S. Department of Agriculture
#' @source <https://www.ers.usda.gov/data-products/county-level-data-sets/>
"unemp_usda"
