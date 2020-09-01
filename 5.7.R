install.packages("faraway", "corrplot", "olsrr", "magrittr", "dplyr")
library(faraway)
library(dplyr)
library(corrplot)
library(olsrr)

data(gala)
attach(gala)
View(gala)

options(scipen = 5)

cor(gala)
corrplot(cor(gala), method = "number", type = "upper") # wyswietla zależność wszystkich zmiennych od siebie

# Endemics zależy od Species w 0.97 - wykluczamy go

model <- lm(Species ~ Area + Elevation + Nearest + Scruz + Adjacent, data=gala)
summary(model)

ols_step_both_aic(model) # krokowo znajduje najlepszy model
model <- lm(Species ~ Elevation + Adjacent, data=gala) 
summary(model)
        