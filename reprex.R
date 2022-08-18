library(tidyverse)

example <- tribble(~food,
                   "Pie",
                   "Tofu",
                   "Bread")

example <- food |>
  mutate(across(where(is.character, tolower))) 

# Correct

library(tidyverse)

example <- tribble(~food,
                   "Pie",
                   "Tofu",
                   "Bread")

example_lower <- example |>
  mutate(across(where(is.character), tolower)) 

# issue 2

library(tidyverse)

mtcars|>
  ggplot(aes(x = mpg, y = cyl)) +
  geom_point(aes(shape = 12), color = "purple") 

#fixed

mtcars|>
  ggplot(aes(x = mpg, y = cyl)) +
  geom_point(shape = 12, color = "purple") 
  