# modified from the python library faker:
# https://github.com/joke2k/faker/blob/master/faker/providers/__init__.py

#' BaseProvider
#'
#' @export
#' @examples
#' (x <- BaseProvider$new())
#'
#' x$numerify("#%%asdf221?")
#' x$lexify("#%%asdf221?")
#' x$bothify("#%%asdf221?")
#'
#' z <- PhoneNumberProvider$new()
#' x$numerify(z$render())
#'
#' x$random_element(letters)
#' x$random_int()
#' x$random_digit()
#' x$random_digit_not_zero()
#' x$random_digit_or_empty()
#' x$random_digit_not_zero_or_empty()
#' x$random_letter()
#' x$check_locale("es_ES")
#' ## fails
#' # x$check_locale("es_EQ")
#'
#' x$randomize_nb_elements()
BaseProvider <- R6::R6Class(
  "BaseProvider",
  public = list(
    #' @description pick a random element from vector/list
    #' @param x vector or list
    #' @return a single element from x
    random_element = function(x) {
      if (length(x) == 0) {
        return("")
      }
      if (inherits(x, "character")) if (!any(nzchar(x))) {
        return("")
      }
      x[sample.int(n = length(x), size = 1)]
    },

    #' @description pick a random element with probability from vector/list
    #' @param x vector or list
    random_element_prob = function(x) {
      if (length(x) == 0) {
        return("")
      }
      if (inherits(x, "character")) if (!any(nzchar(x))) {
        return("")
      }
      choices <- names(x)
      probs <- unname(unlist(x))
      sample(choices, size = 1, prob = probs)
    },

    #' @description any number of random integers from a min, max
    #' @param min the minimum value. default: 0
    #' @param max the maximum value. default: 9999
    #' @param size number of values to return. default: 1
    #' @return random integer
    random_int = function(min = 0, max = 9999, size = 1) {
      stopifnot(max >= min)
      num <- max - min + 1
      sample.int(n = num, size = size, replace = TRUE) + (min - 1)
    },

    #' @description random integer between 0 and 9
    random_digit = function() {
      self$random_element(0:9)
    },

    #' @description random integer between 1 and 9
    random_digit_not_zero = function() {
      self$random_element(1:9)
    },

    #' @description random integer between 0 and 9 or empty character string
    random_digit_or_empty = function() {
      self$random_element(c(0:9, ""))
    },

    #' @description random integer between 1 and 9 or empty character string
    random_digit_not_zero_or_empty = function() {
      self$random_element(c(1:9, ""))
    },

    #' @description random letter
    random_letter = function() {
      # Returns a random letter (between a-z and A-Z)
      self$random_element(c(letters, LETTERS))
    },

    #' @description replace a template with numbers
    #' @param text (character) a string
    numerify = function(text = "###") {
      text <- do_match(text, "#", self$random_digit)
      text <- do_match(text, "%", self$random_digit_not_zero)
      text <- do_match(text, "!", self$random_digit_or_empty)
      text <- do_match(text, "@", self$random_digit_not_zero_or_empty)
      return(text)
    },

    #' @description replace a template with letters
    #' @param text (character) a string
    lexify = function(text = "????") {
      # Replaces all question mark ('?') occurrences with a random letter
      do_match(text, "?", self$random_letter)
    },

    #' @description both numerify and lexify together
    #' @param text (character) a string
    bothify = function(text = "## ??") {
      # Replaces all placeholders with random numbers and letters.
      self$lexify(self$numerify(text))
    },

    #' @description check a locale to see if it exists, if not, stop with
    #' error message
    #' @param x a locale name, e.g, 'bg_BG'
    #' @return returns nothing if locale is supported; stops w/ message if not
    check_locale = function(x) check_locale_(x),

    #' @description Returns a random value near number
    #' @param number value to which the result must be near
    #' @param le result must be lower or equal to number
    #' @param ge result must be greater or equal to number
    #' @param min the minimum value. default: `NULL`
    #' @param max the maximum value. default: `NULL`
    #' @return a random int near number
    randomize_nb_elements = function(number = 10, le = FALSE, ge = FALSE,
                                     min = NULL, max = NULL) {
      if (le && ge) {
        return(number)
      }
      "_min" <- if (ge) 100 else 60
      "_max" <- if (le) 100 else 140
      nb <- as.integer(number * self$random_int(`_min`, `_max`) / 100)
      if (!is.null(min) && nb < min) nb <- min
      if (!is.null(max) && nb > min) nb <- max
      return(nb)
    }
  )
)

check_locale_ <- function(x, z = available_locales) {
  if (!x %in% z) {
    stop(x, " not in set of available locales", call. = FALSE)
  }
}

n_matches <- function(text, pattern) {
  tmp <- gregexpr(paste0("\\", pattern), text)[[1]]
  if (length(tmp) == 1) {
    if (tmp == -1) 0 else tmp
  } else {
    length(tmp)
  }
}

replace_loop <- function(x, pattern, repl) {
  for (i in seq_along(repl)) {
    x <- sub(paste0("\\", pattern), repl[i], x)
  }
  return(x)
}

do_match <- function(text, pattern, fun) {
  nm <- n_matches(text, pattern)
  if (nm > 0) {
    pat <- replicate(nm, eval(fun)())
    replace_loop(text, pattern, pat)
  } else {
    return(text)
  }
}
