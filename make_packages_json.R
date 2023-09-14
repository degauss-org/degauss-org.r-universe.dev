library(dplyr)

df <- tibble::tibble(
  package = c("dht"))

df  <- df %>%
  mutate(url = glue::glue("https://github.com/geomarker-io/{package}"))

jsonlite::write_json(df, 'packages.json', pretty = TRUE)
