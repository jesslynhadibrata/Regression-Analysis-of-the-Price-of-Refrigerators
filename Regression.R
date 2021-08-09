##DATA PREPROCESSING
```{r}
Refrig <- read.csv("Refrigerator.csv",header=TRUE)
```

```{r}
str(Refrig)
summary(Refrig)
```

```{r}
library(psych)
pairs.panels(Refrig, method = "pearson", hist.col = "Red", density = TRUE, ellipses = TRUE)
drop_cols <- c('FSIZE','ECOST','BRANDNAM')
Refrig_2 <- Refrig %>% select(-drop_cols)
```

#MODEL INTERFECE
Refrig_lm <- lm(PRICE ~ ., data=Refrig_2)
summary(Refrig_lm)

Refrig_lm2 <- lm(PRICE~SHELVES+S_SQ_FT+FEATURES, data = train_2)
summary(Refrig_lm2)

#MULTICOLLINEARITY CHECKING
vif(Refrig_lm)

