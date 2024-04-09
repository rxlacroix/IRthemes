
#' Thème Zilla
#'
#' Ce thème se base sur la police Zilla Slab et Roboto Mono
#'
#' @param
#' grid Si une grille doit être affichée ou non, default=TRUE
#' dark Switch en mode sombre, default=FALSE
#' @export
#' @examples
#'

theme_zilla <- function (
    base_family="Zilla Slab", base_size=15,
    grid=TRUE,
    dark=FALSE
)


{

  pal <- c("#FF8C00", "#A034F0", "#159090")

  tzl <- theme_minimal(base_family=base_family) +
    theme(
      panel.grid.minor = element_blank(),
      panel.grid.major.y = element_blank(),
      axis.ticks = element_blank(),
      axis.text.x = element_text(family = "Roboto Mono"),
      axis.text.y = element_text(
        color = rev(darken(pal, .1, space = "HLS")),
        size = 18
      ),
      axis.title.x = element_text(margin = margin(t = 10),
                                  size = 16),
      plot.title = ggtext::element_markdown(face = "bold", size = 21),
      plot.subtitle = element_text(
        color = "grey40", hjust = 0,
        margin = margin(0, 0, 20, 0)
      ),
      plot.title.position = "plot",
      plot.caption = ggtext::element_markdown(
        color = "grey40", lineheight = 1.2,
        margin = margin(20, 0, 0, 0)),
      plot.margin = margin(15, 15, 10, 15)
    )

  bgdark <- "#464950"

  # GRID
  if (grid == TRUE) {
    tzl <- tzl + theme(panel.grid.major=element_line(size=0.2),panel.grid.minor=element_blank())
  } else {
    tzl <- tzl + theme(panel.grid=element_blank())
  }

  # SCHEME
  if (dark == TRUE) {
    tzl <- tzl +
      theme(plot.background=element_rect(fill=bgdark,color=bgdark),
            text=element_text(color="white"),
            strip.text=element_text(color="white"),
            axis.text = element_text(color="white"),
            legend.text = element_text(color="white")
      )
  } else {
    tzl <- tzl
  }


  tzl
}


