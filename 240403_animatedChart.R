######################################
## Lecture for Data Mining course
## Implemented by Minseok Seo
## 2024-04-03
######################################

## Set Repositories
setRepositories(ind = 1:7)

## Load library
#install.packages("tidyverse")
#install.packages("data.table")
#install.packages("gapminder")
#install.packages("nord")
#install.packages("gapminder")
#install.packages("gganimate")
#install.packages("gifski")

library(gifski) # renderer to generate .gif file
library(tidyverse)
library(data.table)
library(gapminder) #contains lot of examples data
library(gganimate) # core packages to generate dynamic plot
library(nord) # color pellette to make beautiful plot

## Set Working Dir.
WORK_DIR <- "C:\\Users\\user\\Desktop\\Rstudio"
setwd(WORK_DIR)

## Load data from the gapminder pacakge
data <- gapminder
View(data)

glimpse(data)



plot1 <- data %>%
  ggplot() + 
  geom_point(aes(x = gdpPercap, y = lifeExp, col = continent, size = pop), alpha = 0.8) + theme_minimal() + 
  theme(legend.position = "bottom") + guides(size = "none") + 
  labs(x = "PIB per Capita" ,y = "Esperanza de Vida",  col = "") 

plot1

## Add animation based on year
plot1 + transition_time(year)

## Add title
plot1 + transition_time(year) +
  labs(title = "Year: {frame_time}")

## With Several Grapic parameter
plot1 +
  geom_text(aes(x = min(gdpPercap), y = min(lifeExp), label = as.factor(year)) , hjust=-2, vjust = -0.2, alpha = 0.2,  col = "gray", size = 20) +
  transition_states(as.factor(year), state_length = 0)


## Plot 2 (ggline)
data %>%
  filter(country == "Korea, Rep.") %>%
  ggplot(aes(year, pop)) + geom_point() + geom_line() + 
  geom_text(aes(x = min(year), y = min(pop), label = as.factor(year)) , hjust=-2, vjust = -0.2, alpha = 0.5,  col = "gray", size = 20) +
  theme_minimal() +
  transition_reveal(year) + 
  view_follow()


## Plot 3 (Animated Bar chart)
data2 <- data %>%
  group_by(year) %>%
  arrange(year, desc(gdpPercap)) %>%
  mutate(ranking = row_number()) %>%
  filter(ranking <=15)

head(data2)


animateBarChart <- data2 %>%
  ggplot() +
  geom_col(aes(ranking, gdpPercap, fill = country)) +
  geom_text(aes(ranking, gdpPercap, label = gdpPercap), hjust=-0.1) +
  geom_text(aes(ranking, y=0 , label = country), hjust=1.1) + 
  geom_text(aes(x=15, y=max(gdpPercap) , label = as.factor(year)), vjust = 0.2, alpha = 0.5,  col = "gray", size = 20) +
  coord_flip(clip = "off", expand = FALSE) + scale_x_reverse() +
  theme_minimal() + theme(
    panel.grid = element_blank(), 
    legend.position = "none",
    axis.ticks.y = element_blank(),
    axis.title.y = element_blank(),
    axis.text.y = element_blank(),
    plot.margin = margin(1, 4, 1, 3, "cm")
  ) +
  transition_states(year, state_length = 0, transition_length = 2) +
  enter_fade() +
  exit_fade() + 
  ease_aes('quadratic-in-out') 

## just print-out on Rstudio
animate(animateBarChart, width = 700, height = 432, fps = 25, duration = 15, rewind = FALSE)


## exporting
animate(animateBarChart, width = 700, height = 432, fps = 25, duration = 15, rewind = FALSE,
        renderer = gifski_renderer("animatedBarchart.gif"))






## Drawing chicken weight without animation
ggplot(ChickWeight, aes(x=Chick, y=weight, fill=Diet))+
  geom_col(show.legend=FALSE)+
  scale_fill_nord('afternoon_prarie')+
  theme_minimal()+
  facet_wrap(~Time)


## Drawing chicken weight with animation
output <- ggplot(ChickWeight, aes(x=Chick, y=weight, fill=Diet))+
  geom_col(show.legend=FALSE)+
  scale_fill_nord('afternoon_prarie')+
  theme_minimal()+
  transition_states(Time,
                    transition_length=1.5,
                    state_length=0.5)


animate(output, width = 1080, height = 1050, fps = 30, duration = 15, rewind = T,
        renderer = gifski_renderer("ChickenAnimatedChart.gif"))




