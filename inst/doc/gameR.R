## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 6,
  fig.height = 6
)

## ----setup, message = FALSE---------------------------------------------------
library(gameR)
library(tidyverse)
library(palmerpenguins)
data("penguins")

## ---- warning = FALSE---------------------------------------------------------
penguins %>%
  ggplot(aes(x = body_mass_g, y = flipper_length_mm, color = species)) +
  geom_point() +
  theme_bw() +
  ggtitle("ggplot example using the 'rayman' palette") +
  scale_color_manual(values = gameR_cols("rayman")) 

## -----------------------------------------------------------------------------
par(bg = "white")

attach(penguins)
plot(x = body_mass_g,
     y = flipper_length_mm,
     main = "Base R example using the 'cyberpunk' palette",
     cex = 1,
     pch = 21,
     bg = gameR_cols("cyberpunk")[unclass(species)])
legend(5500, 200,
       legend = attr(unclass(species), "levels"),
       fill = gameR_cols("cyberpunk"), cex = 0.8)

