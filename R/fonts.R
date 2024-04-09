#' Import Candara font
#'
#' TTF should be placed in the fonts/candara folder
#' @export
import_candara <- function() {
  ca_font_dir <- system.file("fonts", "candara",package="IRthemes")
  suppressWarnings(suppressMessages(extrafont::font_import(ca_font_dir, prompt=FALSE)))
}

#' Import Roboto font
#'
#' TTF should be placed in the fonts/roboto folder
#' @export
import_r <- function() {
  r_font_dir <- system.file("fonts", "roboto",package="IRthemes")
  suppressWarnings(suppressMessages(extrafont::font_import(r_font_dir, prompt=FALSE)))
}

#' Import Zilla slab font
#'
#' TTF should be placed in the fonts/zilla folder
#' @export
import_zs <- function() {
  zs_font_dir <- system.file("fonts", "zilla",package="IRthemes")
  suppressWarnings(suppressMessages(extrafont::font_import(zs_font_dir, prompt=FALSE)))
}

#' Import Roboto Mono  font
#'
#' TTF should be placed in the fonts/robotomono folder
#' @export
import_rm <- function() {
  rm_font_dir <- system.file("fonts", "robotomono",package="IRthemes")
  suppressWarnings(suppressMessages(extrafont::font_import(rm_font_dir, prompt=FALSE)))
}


#' Import Outfit font
#'
#' TTF should be placed in the fonts/outfit folder
#' @export
import_out <- function() {
  out_font_dir <- system.file("fonts", "outfit",package="IRthemes")
  suppressWarnings(suppressMessages(extrafont::font_import(out_font_dir, prompt=FALSE)))
}

#' Import Spline Sans font
#'
#' TTF should be placed in the fonts/spline folder
#' @export
import_spl <- function() {
  spl_font_dir <- system.file("fonts", "spline",package="IRthemes")
  suppressWarnings(suppressMessages(extrafont::font_import(spl_font_dir, prompt=FALSE)))
}

