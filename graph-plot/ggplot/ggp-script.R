install.packages("tidyverse")
library(tidyverse)
ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))
#ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = class))
#ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#make the geom_point function reusable
#ggplot(data = <DATA>) + <GEOM_FUNCTION>(mapping = aes(<MAPPINGS>))
