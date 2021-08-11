# Practicing conditionals and loops ----

# Packages required
library(tidyverse)
library(palmerpenguins)

# Refresh boolean operators

pinyon_pine <- 14

lodgepole_pine <- 46


pinyon_pine == 10
lodgepole_pine > pinyon_pine
pinyon_pine !=  5

  
# Create some basic if statements 

burrito <- 2.4

if burrito > 2) {
  print("I love burritos")
}

# gray whale, blue whale, whale

sbc_observations <- c("blue, whale", "gray whale", "whale", 
                      "gray wale", "dolphin", "sea lion", 
                      "blue whale")


# ?str_detect from stringr package

str_detect(sbc_observations, pattern = "whale")


# An example of str_detect() within a conditional statement

phrase <- "I really love data science"

if (str_detect(phrase, "data")) {
  print("cool me too")
}

# if else statements

pika <- 89

if (pika > 60) {
  print("Large Pika")
} else {
  print("Small Pika")
}

# create a string `food <- " I love empanadas"`
# if else "yay burritos" if burritos is detected in food, 
# and what about burritis otherwise

food <- "I love empanadas"

if (str_detect(food, pattern = "burritos")) {
  print("yay burritos")
} else {
  print("what about burritos")
}

# create a new stored object called marmot <- 2.8. Write an 
# if else if else statement that returns "small marmot", medium marmot
# or large marmot based on size

marmot <- 2.8

if (marmot < 0.5) {
  print("small marmot")
} else if (marmot >= 0.5 & marmot <3) {
  print("medium marmot")
}  else if (marmot > 3) {
  print("large marmot")
  }

# switch statement

species <- "lion"

switch(species, 
       "cat" = print("meow"), 
       "lion" = print("roar"),
       "owl" = print("screech"),
       "fox" = print("obnoxious"),
       print("something else"))



# Afternoon

penguin_summary <- penguins %>% 
  group_by(species, island) %>% 
  summarize(mean_bill_depth = mean(bill_depth_mm, na.rm = TRUE),
  sd_bill_depth = sd(bill_depth_mm, na.rm = TRUE))

penguin_summary


penguins_subset <- penguins %>% 
 filter(island == "Torgersen") %>% 
  select(species, flipper_length_mm, year)


# For loops intro practice

animal <- c("cat", "dog", "dog", "cat", "zebra", "elephant")

for (i in seq_along(animal)) {
  if(animal[i] == "dog") {
    print("I love dogs!") 
  } else {
    print("This is a different animal")}
}


species <- c("dog", "elephant", "goat", "dog", "dog")
age_human <- c(3, 8, 4, 6, 12)


animal_ages <- vector(mode = "numeric", length = length(species))

for (i in seq_along(species)) {
  if(species[i] == "dog") {
    animal_ages <- age_human[i]* 7
  } else if (species == "elephant" {
    animal_ages <- age_human[i] * 0.88        
  } else if (species == "goat") {
    animal_ages <- age_human[i] * 4.7
  }
    animal_ages[i] <- animal_ages
}


# calculate the mean value for each colums in a data frame

mean_mtcars <- vector(mode = "numeric", length = ncol(mtcars))

for (in 1:ncol(mtcars)) {
  mean_val <- mean(mtcars[[i]]), na.rm = TRUE
  mean_mtcars[i] <- mean_val
  }

# Same thing with apply
apply(x = mtcars, 2, mean, na.rm = TRUE)


map_df(.x = mtcars, .f = mean)


  