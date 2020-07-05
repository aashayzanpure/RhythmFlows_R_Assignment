#HeatMap Assignment

#libraries
library(reshape2)
library(ggplot2)

#summary of mean, min, max, unique, sd, null, etc

BostonHousing <- read.csv("BostonHousing.csv")
print(unique(BostonHousing$b))
print(min(BostonHousing$indus))
print(is.na(BostonHousing$rad))
print(max(BostonHousing$tax))
print(nrow(BostonHousing))
print(sd(BostonHousing$tax))
print(mean(BostonHousing$crim))

#heatmap
correlation_matrix <- cor(BostonHousing)
melted_correlation_matrix <- melt(correlation_matrix)
ggplot(data = melted_correlation_matrix, aes(x = Var1, y = Var2, fill = value)) + geom_tile() +
  scale_fill_distiller(palette = "Spectral")

#linear regression model
linear_model <- lm(medv ~ ., BostonHousing)
summary(x)
result <- predict(linear_model, BostonHousing)
result
difference <- (result - BostonHousing$medv)

MSE <- sum(difference^2)/length(BostonHousing$medv)
MAE <- sum(abs(difference))/length(BostonHousing$medv)
RSE <- sqrt(MSE)
print(MSE)
print(MAE)
print(RSE)
