

scale_color_nerd <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  #' Color scale constructor for nerd colors
  #'
  #' @param palette Character name of a palette
  #' @param discrete Boolean indicating whether color aesthetic is discrete or not
  #' @param reverse Boolean indicating whether the palette should be reversed
  #' @param ... Additional arguments passed to discrete_scale() or scale_color_gradientn()
  #' @seealso \code{\link{scale_fill_nerd}}
  #' @examples
  #' df <- data.frame(
  #'  x = runif(50),
  #'  y = runif(50),
  #'  z = rnorm(50),
  #'  category = letters[1 + rbinom(50, 3, .25)]
  #'  )
  #'
  #' library(ggplot2)
  #' # plot with discrete color scale
  #' ggplot(df) +
  #'   geom_point(aes(x, y, color = category)) +
  #'   scale_color_nerd()
  #'
  #' # plot with continuous color scale
  #' ggplot(df) +
  #'   geom_point(aes(x, y, color = z)) +
  #'   scale_color_nerd(palette = "claret", discrete = FALSE)
  #'
  #' @export

  pal <- nerd_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("colour",
      paste0("nerd ", palette),
      palette = pal,
      ...
    )
  } else {
    ggplot2::scale_color_gradientn(colours = pal(256), ...)
  }
}


scale_fill_nerd <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  #' Fill scale constructor for nerd colors
  #'
  #' @param palette Character name of a palette
  #' @param discrete Boolean indicating whether color aesthetic is discrete or not
  #' @param reverse Boolean indicating whether the palette should be reversed
  #' @param ... Additional arguments passed to discrete_scale() or scale_color_gradientn()
  #' @seealso \code{\link{scale_color_nerd}}
  #' @examples
  #'  df <- data.frame(
  #'    c1 = rep(c("a","b"),3),
  #'    c2 = rep(c("c","d","e"), each = 2),
  #'    x = runif(6)
  #'  )
  #'
  #'  library(ggplot2)
  #'  # plot with discrete color scale
  #'  ggplot(df) +
  #'    geom_bar(aes(c1, x, fill = c2), stat = "identity") +
  #'    scale_fill_nerd()
  #'
  #' @export

  pal <- nerd_pal(palette = palette, reverse = reverse)

  if (discrete) {
    ggplot2::discrete_scale("fill", paste0("nerd ", palette), palette = pal, ...)
  } else {
    ggplot2::scale_fill_gradientn(colours = pal(256), ...)
  }
}
