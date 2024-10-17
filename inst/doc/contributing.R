## ----echo=FALSE---------------------------------------------------------------
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  warning = FALSE,
  message = FALSE
)

## -----------------------------------------------------------------------------
library(charlatan)
set.seed(2000)
en <- PersonProvider_en_US$new() # English
jp <- PersonProvider_ja_JP$new() # Japanese
en$first_name() # Georgia
jp$first_name() # Haruka
jp$first_kana_name() #  カオリ
jp$last_kana_name() # コイズミ

