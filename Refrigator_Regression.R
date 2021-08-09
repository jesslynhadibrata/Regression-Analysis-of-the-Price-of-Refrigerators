title: "Regression Analysis of the Price of Refrigerators"
author: "Jesslyn"
date: "8/9/2021"


##PREPARE THE PACKAGE
library(psych)
library(ggplot2)
library(dplyr)

#INPUT THE DATA
Refrig <- read.csv("Refrigerator.csv",header=TRUE)

#DATA PREPROCESSING
str(Refrig)
summary(Refrig)

#FEATURE CORRELATION
pairs.panels(Refrig, method = "pearson", hist.col = "Red", density = TRUE, ellipses = TRUE)

drop_cols <- c('FSIZE','ECOST','BRANDNAM')
Refrig_2 <- Refrig %>% select(-drop_cols)

##MODELLING
#Checking the Adjusted R-squared
Refrig_lm <- lm(PRICE~., data = Refrig_2)
summary(Refrig_lm)

Refrig_lm2 <- lm(PRICE~SHELVES+S_SQ_FT+FEATURES, data = Refrig_2)
summary(Refrig_lm2)

#Checking the AIC
ref.model <- lm(PRICE ~ ., data = Refrig_2)
step(ref.model, direction = "both")

#Multicollinearity Checking
vif(Refrig_lm2)

#MODEL DIAGNOSTIC
par(mfrow=c(2,2))
plot(lm(PRICE ~ ., data=Refrig_2))

