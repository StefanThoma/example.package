#' Transform fahrenheit to celsius
#'
#' @param temp_f numeric vector (vs scalar) of temperatures in fahrenheit
#'
#' @returns numeric vector of temperatures in celsius
#' @export
#'
#' @examples
#' f_to_c(c(0, 32, 100))
f_to_c <- function(temp_f){
  # assertions
  assertthat::assert_that(is.numeric(temp_f))
  assertthat::assert_that(all(temp_f >= -459.67),
  msg = "Temperature must be above absolute zero")

  # computation
  temp_c <- (temp_f - 32) * 5/9

  return(temp_c)
}
