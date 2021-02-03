
# load packages -----------------------------------------------------------

# firefly data ------------------------------------------------------------
fireflies_data <- read_csv("https://whitlockschluter.zoology.ubc.ca/wp-content/data/chapter02/chap02q19FireflySpermatophoreMass.csv") 

ggplot(data = fireflies_data)

Fireflies_data

distinct(fireflies_data, spermatophoreMass)

count(fireflies_data, spermatophoreMass)

ggplot(data = fireflies_data)

ggplot(data = fireflies_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass))

ggplot(data = fireflies_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = .01)

ggplot(data = fireflies_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = .01,
                 boundary = 0, closed = "left")

ggplot(data = fireflies_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = .01,
                 boundary = 0, closed = "left")

ggplot(data = fireflies_data) +
  geom_histogram(mapping = aes(x = spermatophoreMass), binwidth = .005,
                 
                fill = "#C5351B", color = "black") +
  labs(x = "spermatophoreMass", y = "Frequency (number of fireflies)") +
  
  theme_classic() +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(1))
  )

#Bird data --------------------------------------------------------------------

# Loading packages -----------------------------------------------------------

library(tidyverse)
library(auk)                          # load the auk package

# Reading Data ---------------------------------------------------------------
birds <- ebird_taxonomy %>%           # start with the ebird_taxonomy data
  as_tibble() %>%                     # tibbles print better in the console
  filter(category == "species")       # remove non-species taxa
ebird_taxonomy                    # print the data in the console

distinct(ebird_taxonomy)

count(ebird_taxonomy)

# Bird Order Bar Graph


ggplot(data = ebird_taxonomy) +
  geom_bar(mapping = aes(x = fct_infreq(order)), fill = "#C5351B", 
           width = .8) +
  labs(x = "Order", y = "Frequency (log number of bird species)", 
       title = "Number of bird species in each order") +
  scale_y_log10() +
  theme_classic(base_size = 12) +
  theme(
    axis.title = element_text(face = "bold"),
    axis.text = element_text(color = "black", size = rel(.8)),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.ticks.x = element_blank()
  )

