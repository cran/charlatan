#' @title JobProvider
#' @description generate jobs
#' @export
#' @keywords internal
#' @examples
#' z <- JobProvider$new()
#' z$render()
#'
#' z <- JobProvider$new(locale = "fr_FR")
#' z$locale
#' z$render()
#'
#' z <- JobProvider$new(locale = "hr_HR")
#' z$locale
#' z$render()
#'
#' z <- JobProvider$new(locale = "fa_IR")
#' z$locale
#' z$render()
#'
#' z <- JobProvider$new(locale = "nl_NL")
#' z$locale
#' z$render()
JobProvider <- R6::R6Class(
  inherit = BaseProvider,
  "JobProvider",
  public = list(
    #' @field locale (character) the locale
    locale = NULL,
    #' @field formats (character) vector of possible formats
    formats = NULL,

    #' @description fetch the allowed locales for this provider
    allowed_locales = function() private$locales,

    #' @description Create a new `JobProvider` object
    #' @param locale (character) the locale to use. See
    #' `$allowed_locales()` for locales supported (default: en_US)
    #' @return A new `JobProvider` object
    initialize = function(locale = NULL) {
      if (!is.null(locale)) {
        # check locale globally supported
        super$check_locale(locale)
        # check job provider locales
        check_locale_(locale, private$locales)
        self$locale <- locale
      } else {
        self$locale <- "en_US"
      }
      self$formats <- parse_eval("job_formats_", self$locale)
    },

    #' @description Make a job
    render = function() {
      super$random_element(self$formats)
    }
  ),
  private = list(
    locales = c(
      "da_DK", "fa_IR", "fr_CH", "uk_UA", "ru_RU", "pl_PL",
      "en_US", "fr_FR", "hr_HR", "zh_TW", "fi_FI", "nl_NL"
    )
  )
)
