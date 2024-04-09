
#' Thème pour les Résistants Rhodaniens
#'
#' Ce thème se base sur la police Candara
#'
#' @param
#' grid Si une grille doit être affichée ou non, default=TRUE
#' dark Switch en mode sombre, default=FALSE
#' @export
#' @examples
#' @import ggtext ggplot2
#'

theme_resrhods <- function (
    base_family="Candara", base_size=12,
    grid=TRUE,
    dark=FALSE
)

{
  trr <- theme_light(base_family=base_family, base_size=base_size) +
    theme(
      plot.title = element_text(hjust=0, size = rel(1.5), face = "bold", margin = margin(2,0,5,0)),
      plot.subtitle = element_text(hjust=0, size=rel(0.95), margin=margin(2,0,7,0)),
      plot.caption = element_text(hjust=1,size = 7),
      axis.title = element_text(size= rel(1), face = "bold"),
      axis.text.x = element_text( size=rel(1.05),angle=90, vjust=0.5),
      panel.grid.minor = element_blank()
    )

  bgdark <- "#464950"

  # GRID
  if (grid == TRUE) {
    trr <- trr + theme(panel.grid.major=element_line(size=0.2),panel.grid.minor=element_blank())
  } else {
    trr <- trr + theme(panel.grid=element_blank())
  }

  # SCHEME
  if (dark == TRUE) {
    trr <- trr +
      theme(plot.background=element_rect(fill=bgdark,color=bgdark),
            text=element_text(color="white"),
            strip.text=element_text(color="white"),
            axis.text = element_text(color="white"),
            legend.text = element_text(color="white")
      )
  } else {
    trr <- trr
  }


  trr
}
