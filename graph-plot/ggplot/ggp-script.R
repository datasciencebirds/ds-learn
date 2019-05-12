install.packages("tidyverse")
install.packages("maps")
library(tidyverse)
library(maps)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))
#ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = class))
#ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#make the geom_point function reusable
#ggplot(data = <DATA>) + <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))



# 3.8 - 3.10

#ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + geom_boxplot()
ggplot(data = mpg, mapping = aes(x = class, y = hwy)) + 
  geom_boxplot() +
  coord_flip()

nz <- map_data("nz")

ggplot(data = nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black")

ggplot(nz, aes(long, lat, group = group)) +
  geom_polygon(fill = "white", colour = "black") +
  coord_quickmap()


bar <- ggplot(data = diamonds) + 
  geom_bar(
    mapping = aes(x = cut, fill = cut), 
    show.legend = FALSE,
    width = 1
  ) + 
  theme(aspect.ratio = 1) +
  labs(x = NULL, y = NULL)

bar + coord_flip()
bar + coord_polar()