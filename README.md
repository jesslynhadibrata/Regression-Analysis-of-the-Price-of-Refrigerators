# Regression-Analysis-of-the-Price-of-Refrigerators
To study the characteristic of a refrigerator that affecting its price

## ABOUT THIS PROJECT
Refrigerators have become an essential part of every household. The price of refrigerators depends on many factors. This project is focused on the characteristic of a refrigerator and investigates which characteristic are the important factors that could influence the price of a refrigerator. By applying a multilinear regression model and analyzing the validation of the model, I will illustrate that there is a significant relationship between our observed variables. 

## DATA DESCRIPTION
The data we used are consist of 37 observations and 8 explanatory variables. The description of the variables are:

PRICE | numeric | Price of a refrigerator in USD<br>
ECOST | numeric | Average amount of money spent per year to operate the refrigerator<br>
RSIZE | numeric | Size of a refrigerator in cubic feet<br>
FSIZE | numeric | Size of the freezer in cubic feet<br>
SHELVES | numeric | Number of shelves in refrigerator and freezer door<br>
S_SQ_FT | numeric | Amount of shelves space, measured in square feet<br>
FEATURES | numeric | Number of features<br>
BRANDNAM | category | Brand name of the refrigerator<br>

## FEATURE CORRELATION

![Correlation Plot](https://user-images.githubusercontent.com/88670379/128757864-b8944c80-8f52-4d75-985f-efdbf7ad2ea0.png) <br>
Collinearity problem happens when two independent variables are highly correlated with each other. From the output above, which is a pairplot, we can see that the variables FSIZE and ECOST is highly positively correlated with each other. Therefore, we will avoid using these 2 variables together in our regression model.

## MODELLING
The initial model is Refrig_lm with an adjusted R-square value of 0.631, there is plenty of room for improvement in the model. <br>
then, we decide to remove insignificant variables based on p values, eliminating the variable with the highest p value, until all remaining variables were significant<br>
Therefore, the final model is Refrig_lm2 with an adjusted R-square value of 0.6363<br>

![Summary modelling](https://user-images.githubusercontent.com/88670379/128759098-0586ea9a-0c99-4fa9-969e-70b73a731a10.png) <br>

Other way, we can also use the model selection criterion Akaike’s Information Criteria (AIC) in order to select the best model, which has the smallest value of AIC <br>

![AIC](https://user-images.githubusercontent.com/88670379/128759586-6a962c19-a283-4d17-ad49-ac3ab4f20244.png)<br>

In conclusion, based on the result above, it is proven that the final model is the best model

## MULTICOLLINEARITY CHECKING
Since none of the VIF exceed 10, there are no potential multicollinearity detected.

## MODEL DIAGNOSTIC
The model diagnostic plots above show that the regression model fits the data well.  There is good scatter of the residuals around zero for the range of fitted values . And the residuals Q-Q plot show a pretty normal distribution<br>

![Model Diagnostic](https://user-images.githubusercontent.com/88670379/128760519-8bf30618-6670-4180-9d4f-44452acfee89.png)

## CONCLUSION
In conclusion, it is possible to find the potential characteristics of a refrigerator determining its Price. Based on this linear regression analysis on a survey data from Consumer Center, the customers willing to pay more for larger refrigerator (that has more shelves and more options of features) without much consider the Brand, the size of the refrigerator itself and the energy costs






