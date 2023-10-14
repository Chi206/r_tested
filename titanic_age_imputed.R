data <- read.csv("titanic.csv")
data_lm <- data[,c(1,2,4,5,6,7,8,9)]
library(dplyr)
model1 <- lm(age ~ . ,data=data_lm)
data_imputed <- data_lm %>%
  mutate(age = ifelse(is.na(age), predict(model1, .), age))

summary(data$age)
summary(data_imputed$age)

write.csv(data_imputed,file="C:/r/stat/titanic_imputed.csv")