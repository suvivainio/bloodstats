#' Extract Mean Values of Blood Biomarkers
#'
#' This function accepts a dataframe as input and extracts the mean value of
#' each numeric variable.
#'
#' @param df a \code{data.frame} with at least one numeric variable in order to
#' get a non-empty result.
#' @return a data.frame with the mean values of each numeric
#' @importFrom magrittr %>%
#' @author John Doe
#' @export
#' @examples
#' library(magrittr)
#' data.frame(x1 = c(1,2,3), x2 = c(4,5,6)) %>%
#'   bloodstats::bloodmeans()
bloodmeans <- function(df) {
  df %>%
    dplyr::summarise_if(is.numeric, mean, na.rm = TRUE)
}
