
#' Thème spline
#'
#' Ce thème se base sur la police Spline Sans
#'
#' @param
#' grid Si une grille doit être affichée ou non, default=TRUE
#' dark Switch en mode sombre, default=FALSE
#' @export
#' @examples
#'

theme_spline <- function (
    base_family="Spline Sans", base_size=12,
    grid=TRUE,
    dark=FALSE
)

{
  tspl <- theme_minimal(base_family=base_family, base_size=base_size) +
    theme(
      panel.grid.minor = element_blank(),
      panel.grid.major = element_blank(),
      axis.line.x = element_line(color = "grey80", linewidth = .4),
      axis.ticks.x = element_line(color = "grey80", linewidth = .4),
      axis.title.y = element_blank(),
      plot.margin = margin(10, 15, 10, 15)
      )

  bgdark <- "#464950"

  # GRID
  if (grid == TRUE) {
    tspl <- tspl + theme(panel.grid.major=element_line(size=0.2),panel.grid.minor=element_blank())
  } else {
    tspl <- tspl + theme(panel.grid=element_blank())
  }

  # SCHEME
  if (dark == TRUE) {
    tspl <- tspl +
      theme(plot.background=element_rect(fill=bgdark,color=bgdark),
            text=element_text(color="white"),
            strip.text=element_text(color="white"),
            axis.text = element_text(color="white"),
            legend.text = element_text(color="white")
      )
  } else {
    tspl <- tspl
  }


  tspl
}
