
#' Thème pour les Métis Grenache x Syrah
#'
#' Ce thème se base sur la police Roboto
#'
#' @param
#' grid Si une grille doit être affichée ou non, default=TRUE
#' dark Switch en mode sombre, default=FALSE
#' @export
#' @examples
#'

theme_metis <- function (
    base_family="Roboto", base_size=12,
    grid=TRUE,
    dark=FALSE
)

{
  half_line <- base_size/2

  tms <- theme_light(base_family=base_family, base_size=base_size) +
    theme(
      plot.title = element_text(size = rel(1.2),
                                margin = margin(2,0,5,0),
                                face = "bold" , hjust=0, family=base_family),
      plot.subtitle = element_text(size=rel(0.95), hjust=0, margin = margin(2,0,7,0)),
      plot.caption = element_text(family=base_family, face="italic", size=rel(0.85), hjust=1, color="grey30"),
      plot.margin = margin(half_line, base_size, half_line, half_line),

      axis.title = element_text(size= rel(1), face = "bold"),
      axis.text.x = element_text( size=rel(1.05),angle=90, vjust=0.5, hjust=1),
      panel.grid.minor = element_blank()
    )

  bgdark <- "#464950"

  # GRID
  if (grid == TRUE) {
    tms <- tms + theme(panel.grid.major=element_line(size=0.2),panel.grid.minor=element_blank())
  } else {
    tms <- tms + theme(panel.grid=element_blank())
  }

  # SCHEME
  if (dark == TRUE) {
    tms <- tms +
      theme(plot.background=element_rect(fill=bgdark,color=bgdark),
            text=element_text(color="white"),
            strip.text=element_text(color="white"),
            axis.text = element_text(color="white"),
            legend.text = element_text(color="white")
      )
  } else {
    tms <- tms
  }


  tms
}
