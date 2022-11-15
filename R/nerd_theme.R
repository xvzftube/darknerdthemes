#' ggplot2 theme for nerd graphs.
#' @param legend_right Logical indicating whether legend should be placed to
#' the right of the plot. If FALSE, the default, legend is positioned above the
#' plot.
#' @param base_size The base font size
#' @param base_family Font family
#' @param base_line_size Default
#' @param base_rect_size Default
#' @importFrom ggplot2 %+replace%
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(mpg, aes(displ, hwy, color = class)) +
#'   geom_point() +
#'   nerd_theme()
#'
#' ggplot(mpg, aes(displ, hwy)) +
#'   geom_point() +
#'   nerd_theme(vars(class)) +
#'   nerd_theme()
#'
nerd_theme_gruv <- function(legend_right = FALSE,
                            base_size = 12,
                            base_family = "",
                            # base_family = "SauceCode Pro Nerd Font",
                            base_line_size = base_size / 170,
                            base_rect_size = base_size / 170) {
  half_line <- base_size / 2
  grid_line_color <- nerd_colors("white")
  grid_line_size <- 0.2
  title_text_color <- nerd_colors("white")
  other_text_color <- nerd_colors("white")
  panel_background <- nerd_colors("chocolate")
  font_family <- "SauceCode Pro Nerd Font"


  if (legend_right == TRUE) {
    spec_legend_position <- "right"
    spec_legend_direction <- "vertical"
    legend_justification_spec <- "center"
    legend_box_spacing_spec <- ggplot2::unit(2 * half_line, "pt")
  } else {
    spec_legend_position <- "top"
    spec_legend_direction <- "horizontal"
    legend_justification_spec <- c(0, 0)
    legend_box_spacing_spec <- ggplot2::unit(0, "char")
  }

  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size
  ) %+replace%
    ggplot2::theme(
      plot.title = ggplot2::element_text(
        color = title_text_color,
        size = ggplot2::rel(1.2),
        face = "bold",
        hjust = 0,
        margin = ggplot2::margin(b = half_line)
      ),
      plot.subtitle = ggplot2::element_text(
        color = other_text_color,
        face = "bold",
        hjust = 0,
        margin = ggplot2::margin(b = half_line)
      ),
      plot.caption = ggplot2::element_text(
        color = other_text_color,
        hjust = 0,
        size = ggplot2::rel(0.8),
        margin = margin(t = half_line)
      ),
      strip.text = ggplot2::element_text( # facet_wrap title
        color = other_text_color,
        family = font_family,
        size = 24
      ),
      axis.title = ggplot2::element_text(
        color = other_text_color,
        size = ggplot2::rel(0.9),
        face = "bold"
      ),
      axis.text = ggplot2::element_text(
        color = other_text_color,
        size = ggplot2::rel(0.8),
        margin = ggplot2::margin()
      ),
      axis.text.y = ggplot2::element_text(margin = ggplot2::margin(r = -0.8 * half_line / 2), hjust = 1),
      axis.line = ggplot2::element_line(
        colour = grid_line_color,
        size = grid_line_size
      ),
      axis.line.y = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_line(
        color = grid_line_color,
        size = grid_line_size
      ),
      axis.ticks.y = ggplot2::element_blank(),
      axis.ticks.length = ggplot2::unit(0.5, "char"),
      panel.grid.major.y = ggplot2::element_line(
        color = grid_line_color,
        size = grid_line_size
      ),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      legend.position = spec_legend_position,
      legend.justification = legend_justification_spec,
      legend.direction = spec_legend_direction,
      legend.title = ggplot2::element_text(
        hjust = 0,
        color = other_text_color,
        size = ggplot2::rel(0.9),
        face = "bold"
      ),
      legend.spacing.x = ggplot2::unit(1, "char"),
      legend.text = ggplot2::element_text(
        color = other_text_color,
        hjust = 0,
        size = ggplot2::rel(0.8)
      ),
      legend.margin = ggplot2::margin(),
      legend.box.spacing = legend_box_spacing_spec,
      plot.margin = ggplot2::margin(1, 1, 1, 1, unit = "char"),
      plot.title.position = "plot",
      plot.caption.position = "plot",
      plot.background = element_rect(fill = panel_background),
      complete = TRUE
    )
}

#' ggplot2 theme for nerd graphs.
#' @param legend_right Logical indicating whether legend should be placed to
#' the right of the plot. If FALSE, the default, legend is positioned above the
#' plot.
#' @param base_size The base font size
#' @param base_family Font family
#' @param base_line_size Default
#' @param base_rect_size Default
#' @importFrom ggplot2 %+replace%
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(mpg, aes(displ, hwy, color = class)) +
#'   geom_point() +
#'   nerd_theme()
#'
#' ggplot(mpg, aes(displ, hwy)) +
#'   geom_point() +
#'   nerd_theme(vars(class)) +
#'   nerd_theme()
#'
nerd_theme_nord <- function(legend_right = FALSE,
                            base_size = 12,
                            base_family = "",
                            # base_family = "SauceCode Pro Nerd Font",
                            base_line_size = base_size / 170,
                            base_rect_size = base_size / 170) {
  half_line <- base_size / 2
  grid_line_color <- nerd_colors("nord-snow-storm-30")
  grid_line_size <- 0.2
  title_text_color <- nerd_colors("nord-snow-storm-30")
  other_text_color <- nerd_colors("nord-snow-storm-30")
  panel_background <- nerd_colors("nord-polar-night-70")
  font_family <- "SauceCode Pro Nerd Font"


  if (legend_right == TRUE) {
    spec_legend_position <- "right"
    spec_legend_direction <- "vertical"
    legend_justification_spec <- "center"
    legend_box_spacing_spec <- ggplot2::unit(2 * half_line, "pt")
  } else {
    spec_legend_position <- "top"
    spec_legend_direction <- "horizontal"
    legend_justification_spec <- c(0, 0)
    legend_box_spacing_spec <- ggplot2::unit(0, "char")
  }

  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size
  ) %+replace%
    ggplot2::theme(
      plot.title = ggplot2::element_text(
        color = title_text_color,
        size = ggplot2::rel(1.2),
        face = "bold",
        hjust = 0,
        margin = ggplot2::margin(b = half_line)
      ),
      plot.subtitle = ggplot2::element_text(
        color = other_text_color,
        face = "bold",
        hjust = 0,
        margin = ggplot2::margin(b = half_line)
      ),
      plot.caption = ggplot2::element_text(
        color = other_text_color,
        hjust = 0,
        size = ggplot2::rel(0.8),
        margin = margin(t = half_line)
      ),
      strip.text = ggplot2::element_text( # facet_wrap title
        color = other_text_color,
        family = font_family,
        size = 24
      ),
      axis.title = ggplot2::element_text(
        color = other_text_color,
        size = ggplot2::rel(0.9),
        face = "bold"
      ),
      axis.text = ggplot2::element_text(
        color = other_text_color,
        size = ggplot2::rel(0.8),
        margin = ggplot2::margin()
      ),
      axis.text.y = ggplot2::element_text(margin = ggplot2::margin(r = -0.8 * half_line / 2), hjust = 1),
      axis.line = ggplot2::element_line(
        colour = grid_line_color,
        size = grid_line_size
      ),
      axis.line.y = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_line(
        color = grid_line_color,
        size = grid_line_size
      ),
      axis.ticks.y = ggplot2::element_blank(),
      axis.ticks.length = ggplot2::unit(0.5, "char"),
      panel.grid.major.y = ggplot2::element_line(
        color = grid_line_color,
        size = grid_line_size
      ),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      legend.position = spec_legend_position,
      legend.justification = legend_justification_spec,
      legend.direction = spec_legend_direction,
      legend.title = ggplot2::element_text(
        hjust = 0,
        color = other_text_color,
        size = ggplot2::rel(0.9),
        face = "bold"
      ),
      legend.spacing.x = ggplot2::unit(1, "char"),
      legend.text = ggplot2::element_text(
        color = other_text_color,
        hjust = 0,
        size = ggplot2::rel(0.8)
      ),
      legend.margin = ggplot2::margin(),
      legend.box.spacing = legend_box_spacing_spec,
      plot.margin = ggplot2::margin(1, 1, 1, 1, unit = "char"),
      plot.title.position = "plot",
      plot.caption.position = "plot",
      plot.background = element_rect(fill = panel_background),
      complete = TRUE
    )
}

#' ggplot2 theme for nerd graphs.
#' @param legend_right Logical indicating whether legend should be placed to
#' the right of the plot. If FALSE, the default, legend is positioned above the
#' plot.
#' @param base_size The base font size
#' @param base_family Font family
#' @param base_line_size Default
#' @param base_rect_size Default
#' @importFrom ggplot2 %+replace%
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(mpg, aes(displ, hwy, color = class)) +
#'   geom_point() +
#'   nerd_theme()
#'
#' ggplot(mpg, aes(displ, hwy)) +
#'   geom_point() +
#'   nerd_theme(vars(class)) +
#'   nerd_theme()
#'
nerd_theme_everforest <- function(legend_right = FALSE,
                                  base_size = 12,
                                  base_family = "",
                                  # base_family = "SauceCode Pro Nerd Font",
                                  base_line_size = base_size / 170,
                                  base_rect_size = base_size / 170) {
  half_line <- base_size / 2
  grid_line_color <- nerd_colors("everforest-white")
  grid_line_size <- 0.2
  title_text_color <- nerd_colors("everforest-white")
  other_text_color <- nerd_colors("everforest-white")
  panel_background <- nerd_colors("everforest-background")
  font_family <- "SauceCode Pro Nerd Font"


  if (legend_right == TRUE) {
    spec_legend_position <- "right"
    spec_legend_direction <- "vertical"
    legend_justification_spec <- "center"
    legend_box_spacing_spec <- ggplot2::unit(2 * half_line, "pt")
  } else {
    spec_legend_position <- "top"
    spec_legend_direction <- "horizontal"
    legend_justification_spec <- c(0, 0)
    legend_box_spacing_spec <- ggplot2::unit(0, "char")
  }

  ggplot2::theme_minimal(
    base_size = base_size,
    base_family = base_family,
    base_line_size = base_line_size
  ) %+replace%
    ggplot2::theme(
      plot.title = ggplot2::element_text(
        color = title_text_color,
        size = ggplot2::rel(1.2),
        face = "bold",
        hjust = 0,
        margin = ggplot2::margin(b = half_line)
      ),
      plot.subtitle = ggplot2::element_text(
        color = other_text_color,
        face = "bold",
        hjust = 0,
        margin = ggplot2::margin(b = half_line)
      ),
      plot.caption = ggplot2::element_text(
        color = other_text_color,
        hjust = 0,
        size = ggplot2::rel(0.8),
        margin = margin(t = half_line)
      ),
      strip.text = ggplot2::element_text( # facet_wrap title
        color = other_text_color,
        family = font_family,
        size = 24
      ),
      axis.title = ggplot2::element_text(
        color = other_text_color,
        size = ggplot2::rel(0.9),
        face = "bold"
      ),
      axis.text = ggplot2::element_text(
        color = other_text_color,
        size = ggplot2::rel(0.8),
        margin = ggplot2::margin()
      ),
      axis.text.y = ggplot2::element_text(margin = ggplot2::margin(r = -0.8 * half_line / 2), hjust = 1),
      axis.line = ggplot2::element_line(
        colour = grid_line_color,
        size = grid_line_size
      ),
      axis.line.y = ggplot2::element_blank(),
      axis.ticks = ggplot2::element_line(
        color = grid_line_color,
        size = grid_line_size
      ),
      axis.ticks.y = ggplot2::element_blank(),
      axis.ticks.length = ggplot2::unit(0.5, "char"),
      panel.grid.major.y = ggplot2::element_line(
        color = grid_line_color,
        size = grid_line_size
      ),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.grid.minor = ggplot2::element_blank(),
      legend.position = spec_legend_position,
      legend.justification = legend_justification_spec,
      legend.direction = spec_legend_direction,
      legend.title = ggplot2::element_text(
        hjust = 0,
        color = other_text_color,
        size = ggplot2::rel(0.9),
        face = "bold"
      ),
      legend.spacing.x = ggplot2::unit(1, "char"),
      legend.text = ggplot2::element_text(
        color = other_text_color,
        hjust = 0,
        size = ggplot2::rel(0.8)
      ),
      legend.margin = ggplot2::margin(),
      legend.box.spacing = legend_box_spacing_spec,
      plot.margin = ggplot2::margin(1, 1, 1, 1, unit = "char"),
      plot.title.position = "plot",
      plot.caption.position = "plot",
      plot.background = element_rect(fill = panel_background),
      complete = TRUE
    )
}
