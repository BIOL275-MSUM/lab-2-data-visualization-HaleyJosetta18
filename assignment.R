library(tidyverse)
library(palmerpenguins)
view(penguins)
# rows=344 columns=8
# when you run ggplot2(data=penguins) you get an error  
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g , y = flipper_length_mm))
penguins

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color=species, shape = island))

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color=species, shape = island))+
 facet_wrap(~ species, nrow = 1)

ggplot(data = penguins) + 
  geom_point(mapping = aes(x = body_mass_g, y = flipper_length_mm, color=species, shape = island))+ 
  facet_grid(island ~ species)
  
usethis::create_github_token

