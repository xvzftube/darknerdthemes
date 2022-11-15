
nerd_o_colors <- c(
  chocolate = "#32302f",
  white = "#ebdbb2",
  `violet-red` = "#b16286",
  `cadet-blue` = "#458588",
  `light-sea-green` = "#689d6a",
  `gold-rod-green` = "#98971a",
  `gold-rod-orange` = "#d79921",
  `bright-tomato` = "#d65d0e",
  `violet-light` = "#d3869b",
  `nerd-blue` = "#69C9D0",
  `nerd-red` = "#EE1D52",
  `black-5` = "#F2E5DA",
  `black-10` = "#E6D9CE",
  `black-20` = "#CCC1B7",
  `black-30` = "#B3A9A0",
  `black-40` = "#999189",
  `black-50` = "#807973",
  `black-60` = "#66605C",
  `black-70` = "#4D4845",
  `black-80` = "#33302E",
  `black-90` = "#1A1817",
  `white-10` = "#FFF2E8",
  `white-20` = "#FFF4EA",
  `white-40` = "#FFF7EF",
  `white-60` = "#FFF9F5",
  `white-80` = "#FFFCFA",
  `nord-polar-night-90` = "#2e3440",
  `nord-polar-night-70` = "#3b4252",
  `nord-polar-night-30` = "#434c5e",
  `nord-polar-night-10` = "#4c566a",
  `nord-snow-storm-90` = "#d8dee9",
  `nord-snow-storm-70` = "#e5e9f0",
  `nord-snow-storm-30` = "#eceff4",
  `nord-frost-10` = "#8fbcbb",
  `nord-frost-20` = "#88c0d0",
  `nord-frost-40` = "#81a1c1",
  `nord-frost-60` = "#5e81ac",
  `nord-aurora-10` = "#bf616a",
  `nord-aurora-20` = "#d08770",
  `nord-aurora-40` = "#ebcb8b",
  `nord-aurora-60` = "#a3be8c",
  `nord-aurora-80` = "#b48ead",
  `everforest-background` = "#2f383e",
  `everforest-white` = "#d3c6aa",
  `everforest-green` = "#a7c080",
  `everforest-blue` = "#7fbbb3",
  `everforest-orange` = "#e69875",
  `everforest-purple` = "#d699b6",
  `everforest-green` = "#83C092"
)

nerd_colors <- function(...) {
  #' Dark Nerd Themes Colors
  #'
  #' Get nerd colors
  #' @param ... Names of the colors
  #' @details Use \code{nerd_colors()}
  #' @examples
  #' # Full list
  #' nerd_colors()
  #'
  #' # Choose colors
  #' nerd_colors("chocolate")
  #' nerd_colors("nerd-red", "nerd-blue")
  #'
  #' @export

  cols <- c(...)

  if (is.null(cols)) {
    return(nerd_o_colors)
  }

  not_found <- which(!(cols %in% names(nerd_o_colors)))
  if (length(not_found) > 0) {
    warning(paste0("Could not find colors ", paste0(cols[not_found], collapse = ", "), ". Returned NAs instead.\n"))
  }

  unname(nerd_o_colors[cols])
}


# nerdtube chocolate palettes
nerd_o_palettes <- list(
  `main` = nerd_colors("white-80", "black-30", "bright-tomato", "nerd-red", "gold-rod-orange", "violet-light", "nerd-blue", "light-sea-green"),
  `candy` = nerd_colors("white", "violet-red", "cadet-blue", "nerd-red", "gold-rod-green", "gold-rod-orange", "black-20"),
  `nord frost` = nerd_colors("nord-snow-storm-30", "nord-frost-10", "nord-frost-20", "nord-frost-40", "nord-frost-60"),
  `nord aurora` = nerd_colors("nord-snow-storm-30", "nord-aurora-10", "nord-aurora-40", "nord-aurora-60", "nord-aurora-80", "nord-aurora-20", "nord-frost-10", "nord-frost-60", "nord-snow-storm-30"),
  `everforest` = nerd_colors("everforest-white", "everforest-green", "everforest-blue", "everforest-orange", "everforest-purple", "everforest-green")
)

#' nerd color palettes generator.
#'
#' Returns a function helps pick a theme
#'
#' @param palette Character name of a palette
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
nerd_pal <- function(palette = "main", reverse = FALSE, ...) {
  assertthat::assert_that(palette %in% names(nerd_o_palettes),
    msg = paste0("Palette not found. Please use one of these: ", paste0(names(nerd_o_colors), collapse = ", "))
  )

  pal <- nerd_o_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  grDevices::colorRampPalette(pal, ...)
}
