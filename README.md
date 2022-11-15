#darknerdthemes

I like to use dark themes when working. I like `gruvebox`, `nord`, and `everforest`. I think darkthemes could use a little more representation in the ggplot2 community. I do not follow the above themes strictly, I just hope to generate sensible dark themes. Please fork and make your own variations.

# Example

```
# install
devtools::install_github("https://github.com/xvzftube/darknerdthemes")

# load
library()

# example 1
ggplot(mpg, aes(displ, hwy, color = class)) +
  geom_point() +
  nerd_theme_gruv()
  
# example 2
ggplot(mpg, aes(displ, hwy, color = class)) +
  geom_point() +
  nerd_theme_nord()+
  scale_color_nerd(palette = "nord aurora")
```
