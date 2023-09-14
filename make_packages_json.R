library(dplyr)

df <- tibble::tibble(
  package = c("dht"))

df  <- df %>%
  mutate(url = glue::glue("https://github.com/degauss-org/{package}"))

jsonlite::write_json(df, 'packages.json', pretty = TRUE)
