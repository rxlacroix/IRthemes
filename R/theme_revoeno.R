
#' Thème "like" revue des oenologues
#'
#' Ce thème se base sur la police Heebo
#'
#' @param
#' grid Si une grille doit être affichée ou non, default=TRUE
#' dark Switch en mode sombre, default=FALSE
#' @export
#' @examples
#' @import ggtext ggplot2
#'

theme_revoeno <- function (
    base_family="Roboto", base_size=12,
    grid=TRUE,
    dark=FALSE
)

{
  trev <- theme_classic(base_family = "Roboto", base_size = 12)+
    theme(panel.border = element_rect(color = "black", fill = NA, size = 1),
          axis.line = element_blank(),
          axis.title = element_text(face = "bold", size = rel(1.5), color = "black", hjust = 1),
          axis.text = element_text(face = "bold", size = rel(1), color = "black" ) ,
          axis.ticks.length = unit(.25, "cm"),
          plot.title = element_text(face = "bold", size = rel(2), color = "black" )
    )

  bgdark <- "#464950"

  # GRID
  if (grid == TRUE) {
    trev <- trev + theme(panel.grid.major=element_line(size=0.2),panel.grid.minor=element_blank())
  } else {
    trev <- trev + theme(panel.grid=element_blank())
  }

  # SCHEME
  if (dark == TRUE) {
    trev <- trev +
      theme(plot.background=element_rect(fill=bgdark,color=bgdark),
            text=element_text(color="white"),
            strip.text=element_text(color="white"),
            axis.text = element_text(color="white"),
            legend.text = element_text(color="white")
      )
  } else {
    trev <- trev
  }


  trev
}
