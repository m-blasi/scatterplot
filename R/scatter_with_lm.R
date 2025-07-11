#' Scatterplot with Regression Line
#'
#' Creates a ggplot2 scatterplot with an added linear regression line.
#'
#' @param data A data.frame
#' @param x Name of the x variable (string)
#' @param y Name of the y variable (string)
#'
#' @return A ggplot2 object
#'
#' @examples
#' scatter_with_lm(mtcars, "wt", "mpg")
#'
#' @export
scatter_with_lm <- function(data, x, y) {
  ggplot2::ggplot(data, ggplot2::aes_string(x = x, y = y)) +
    ggplot2::geom_point() +
    ggplot2::geom_smooth(method = "lm", se = TRUE) +
    ggplot2::theme_minimal()
}
