# Regression-Analysis-of-the-Price-of-Refrigerators
To study the characteristic of a refrigerator that affecting its price

# ABOUT THIS PROJECT
Refrigerators have become an essential part of every household. The price of refrigerators depends on many factors. This project is focused on the characteristic of a refrigerator and investigates which characteristic are the important factors that could influence the price of a refrigerator. By applying a multilinear regression model and analyzing the validation of the model, I will illustrate that there is a significant relationship between our observed variables. 


#DATA PREPROCESSING
```{r}
Refrig <- read.csv("C:/Users/Adlenia/Documents/KULIAH/@Sem 7/MTH303/CW 1/CW/Refrigerator.csv",header=TRUE)
```

```{r}
str(Refrig)
```
From the output above, we can see that there are 37 observations and 8 explanatory variables. The description of the variables are:

| Name | Character. | Description |
:---|:---|:-----|
PRICE | numeric | Price of a refrigerator in USD
ECOST | numeric | Average amount of money spent per year to operate the refrigerator
RSIZE | numeric | Size of a refrigerator in cubic feet
FSIZE | numeric | Size of the freezer in cubic feet
SHELVES | numeric | Number of shelves in refrigerator and freezer door
S_SQ_FT | numeric | Amount of shelves space, measured in square feet
FEATURES | numeric | Number of features
BRANDNAM | category | Brand name of the refrigerator
