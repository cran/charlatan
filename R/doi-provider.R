#' DOIProvider
#'
#' Generate random Digital Object Identifyers, used in scientific journals.
#' @export
#' @keywords internal
#' @examples
#' (z <- DOIProvider$new())
#' z$render()
DOIProvider <- R6::R6Class(
  "DOIProvider",
  inherit = BareProvider,
  public = list(
    #' @field funs (list) list of functions to use to apply to DOI creation
    funs = list(
      a = function() {
        formats <- c("10.%s/%s-%s-%s", "10.%s/%s.%s.%s")
        sprintf(
          sample(formats, 1),
          floor(runif(1, 100, 99999)),
          floor(runif(1, 100, 99999)),
          floor(runif(1, 100, 99999)),
          floor(runif(1, 100, 9999))
        )
      },
      b = function() {
        formats <- "10.%s/%s.%s"
        sprintf(
          sample(formats, 1),
          floor(runif(1, 100, 99999)),
          paste0(sample(letters, 4), collapse = ""),
          floor(runif(1, 100, 99999999L))
        )
      }
    ),

    #' @description Make a random DOI
    render = function() {
      x <- super$random_element(seq_along(self$funs))
      self$funs[[x]]()
    }
  ), private = list(
    provider_ = "DOIProvider"
  )
)
