
#' Thème pour le réseau maturité
#'
#' Ce thème se base sur la police Outfit
#'
#' @param
#' grid Si une grille doit être affichée ou non, default=TRUE
#' dark Switch en mode sombre, default=FALSE
#' @export
#' @examples
#'

theme_matu <- function (
    base_family="Outfit", base_size=12,
    grid=TRUE,
    dark=FALSE
)

{
  tm <- theme_minimal(base_family = base_family) +
    theme(
      axis.title = element_blank(),
      axis.text = element_text(color = "black"),
      axis.text.x = element_text(size = 20, margin = margin(t = 5)),
      axis.text.y = element_text(size = 17, margin = margin(r = 5)),
      axis.ticks = element_line(color = "grey91", size = .5),
      axis.ticks.length.x = unit(1.3, "lines"),
      axis.ticks.length.y = unit(.7, "lines"),
      panel.grid = element_blank(),
      plot.margin = margin(20, 40, 20, 40),
      plot.background = element_rect(fill = "grey98", color = "grey98"),
      panel.background = element_rect(fill = "grey98", color = "grey98"),
      plot.title = element_text(
        color = "black", size = 32, face = "bold",
        margin = margin(t = 15)
      ),
      plot.subtitle = ggtext::element_markdown(
        color = "black", size = 17,
        lineheight = 1.35,
        margin = margin(t = 20, b = 20)
      ),
      plot.title.position = "plot",
      plot.caption.position = "plot",
      plot.caption = element_text(
        color = "black", size = 15,
        lineheight = 1.2, hjust = 0,
        margin = margin(t = 40)
      ),
      legend.position = "none",
      axis.line.y.left = element_blank(),
      panel.grid.major.y = element_line(color = "#A8BAC4", size = 0.3),
      axis.ticks.x.bottom = element_line(color = "black"),
      axis.line.x.bottom = element_line(color = "black"),
    )

  bgdark <- "#464950"

  # GRID
  if (grid == TRUE) {
    tm <- tm + theme(panel.grid.major=element_line(size=0.2),panel.grid.minor=element_blank())
  } else {
    tm <- tm + theme(panel.grid=element_blank())
  }

  # SCHEME
  if (dark == TRUE) {
    tm <- tm +
      theme(plot.background=element_rect(fill=bgdark,color=bgdark),
            text=element_text(color="white"),
            strip.text=element_text(color="white"),
            axis.text = element_text(color="white"),
            legend.text = element_text(color="white")
      )
  } else {
    tm <- tm
  }


  tm
}
