#' Save a ggplot2 Plot to PDF
#'
#' Saves a ggplot2 plot object to a PDF file.
#'
#' @param plot A ggplot object
#' @param filename Name of the PDF file to save
#' @param width Width of the PDF (in inches)
#' @param height Height of the PDF (in inches)
#'
#' @return Invisibly returns the filename
#'
#' @examples
#' p <- scatter_with_lm(mtcars, "wt", "mpg")
#' save_plot_pdf(p, "myplot.pdf", width = 6, height = 4)
#'
#' @export
save_plot_pdf <- function(plot, filename, width = 7, height = 5) {
  ggplot2::ggsave(filename, plot = plot, width = width, height = height)
  invisible(filename)
}
