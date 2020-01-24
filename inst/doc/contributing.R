## ----echo=FALSE---------------------------------------------------------------
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  warning = FALSE,
  message = FALSE
)

## -----------------------------------------------------------------------------
library(R6)
MyBaseProvider <- R6::R6Class(
  'MyBaseProvider',
  public = list(
    random_element = function(x) {
      if (length(x) == 0) return('')
      if (inherits(x, "character")) if (!any(nzchar(x))) return('')
      x[sample.int(n = length(x), size = 1)]
    },

    random_int = function(min = 0, max = 9999, size = 1) {
      stopifnot(max >= min)
      num <- max - min + 1
      sample.int(n = num, size = size, replace = TRUE) + (min - 1)
    }
  )
)

## -----------------------------------------------------------------------------
FooBar <- R6::R6Class(
  'FooBar',
  inherit = charlatan::BaseProvider,
  public = list(
    integer = function(n = 1, min = 1, max = 1000) {
      super$random_int(min, max, n)
    }
  )
)

## -----------------------------------------------------------------------------
x <- FooBar$new()
x
x$integer()

## -----------------------------------------------------------------------------
library(charlatan)
file <- system.file("examples", "address-provider-en_US.R", package = "charlatan")
source(file)
MyAddressProvider <- R6::R6Class(
  inherit = MyBaseProvider,
  'MyAddressProvider',
  lock_objects = FALSE,
  public = list(
    locale = NULL,
    city_suffixes = NULL,

    initialize = function() {
      self$locale <- 'en_us'
      self$city_suffixes <-
        eval(parse(text = paste0("city_suffixes_", self$locale)))
    },

    city_suffix = function() {
      super$random_element(self$city_suffixes)
    }
  )
)

## -----------------------------------------------------------------------------
x <- MyAddressProvider$new()
x
x$city_suffix()

