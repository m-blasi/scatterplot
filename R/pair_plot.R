#' Pair Plot
#'
#' Creates a matrix of scatterplots for all numeric variables in a data frame.
#'
#' @param data A data.frame containing numeric variables
#'
#' @return Produces a scatterplot matrix as a side effect
#'
#' @examples
#' pair_plot(mtcars)
#'
#' @export
pair_plot <- function(data) {
  num_data <- data[sapply(data, is.numeric)]

  if (ncol(num_data) < 2) {
    stop("Need at least two numeric variables to make a pair plot.")
  }

  pairs(num_data, main = "Scatterplot Matrix")
}
