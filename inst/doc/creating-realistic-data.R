## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(charlatan)

## -----------------------------------------------------------------------------
# setup
fraudster_cl <- fraudster("en_US")
n <- 5
set.seed(1235)

## -----------------------------------------------------------------------------
# create product data
products <- data.frame(
  prefix = c(rep(1, 5), rep(2, 2), rep(5, 2)),
  product_id = fraudster_cl$integer(n = 9, min = 1000, max = 9999),
  main_category = c(rep("Shoes", 5), rep("Jeans", 2), rep("Dresses", 2)),
  sub_category = c(
    "Dress shoes", "Tennis shoes", "Boots", "Hiking boots", "Country & Western style boots",
    "Regular fit", "Straight fit",
    "Summer dress", "Evening gown"
  )
)
## when you have {dplyr} installed there are way cleaner ways to do this
products$product_id <- as.integer(sprintf("%s%s", as.character(products$prefix), products$product_id))
products

## -----------------------------------------------------------------------------
# create orders
orders <- data.frame(
  order_id = fraudster_cl$integer(n = n, min = 10000, max = 90000),
  location_id = fraudster_cl$integer(n = n, min = 1, max = 5),
  price_paid = fraudster_cl$integer(n = n, min = 1, max = 9900) / 100,
  product_id = sample(products$product_id, size = n, replace = TRUE),
  order_email = fraudster_cl$email(n = n),
  customer_name = fraudster_cl$name(n = n),
  shipping_address = fraudster_cl$address(n = n)
)

## -----------------------------------------------------------------------------
# combine orders and transactions
example_transactions <- merge(orders, products)
## reorder the columns to let it make more sense.
example_transactions[, c("order_id", "location_id", "product_id", "main_category", "sub_category", "price_paid", "customer_name", "order_email", "shipping_address")]

## -----------------------------------------------------------------------------
# setup the providers
ap <- AddressProvider_en_US$new()
pp <- PersonProvider_en_US$new()
ip <- InternetProvider_en_US$new()
lp <- LoremProvider_en_US$new()
SSNP <- SSNProvider_en_US$new()
dtp <- DateTimeProvider$new()
np <- NumericsProvider$new()
pnp <- PhoneNumberProvider_en_US$new()

set.seed(1235)

## -----------------------------------------------------------------------------
prot_health <- list(
  first_name = pp$first_name(),
  last_name = pp$last_name(),
  phone_number = pnp$render(),
  fax_number = pnp$render(),
  street = ap$street_address(),
  zipcode = ap$postcode(),
  email = ip$email(),
  county = paste0(lp$word(), " county"),
  SSN = SSNP$render(),
  dob = as.Date(dtp$date_time_between("1930-01-01", "1990-12-31")),
  # I've decided record number is an integer between 10000 - 99999
  medical_record_number = np$integer(min = 10000, max = 99999),
  ip_address = ip$ipv4()
)
prot_health

## -----------------------------------------------------------------------------
#' Generate a bunch of dates in sequence
gen_med_record <- function(date_value, events = 4, event_types = c("admission", "x-ray", "blood-test", "general exam")) {
  days <- sort(np$integer(events, 1, 365))
  result <- data.frame(
    date = date_value + days
  )
  result$event <- sample(event_types, size = nrow(result), replace = TRUE)
  result
}

result <- gen_med_record(date_value = as.Date("2022-03-01"), events = 5)
## And add the generated data to this dataframe too
result$medical_record_number <- prot_health$medical_record_number
result$last_name <- prot_health$last_name
result$date_of_birth <- prot_health$dob
result

