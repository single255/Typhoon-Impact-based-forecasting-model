landmask <- readr::read_csv("data-raw/landseamask_ph1.csv",
                            col_names = c("longitude", "latitude", "land")) %>%
  dplyr::mutate(land = factor(land, levels = c(1, 0), labels = c("land", "water")))

# ggplot(landmask, aes(x = longitude, y = latitude, color = land)) +
#   geom_point()

devtools::use_data(landmask)
