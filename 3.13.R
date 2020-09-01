install.packages("car", "vctrs", dependencies=TRUE)
library(car)

summary(mtcars)

drawBoxplot <- function(x, i) {
  boxplot(x, range=1.5, varwidth=TRUE, notch=FALSE, outline=FALSE, horizontal=FALSE, main=paste(colnames(mtcars)[i]), ylab="Value", xlab="mtcars")
}

par(mfrow=c(2, 6))
lapply(seq_along(mtcars), function(i) drawBoxplot(mtcars[i], i))

lapply(mtcars, shapiro.test)

par(mfrow=c(2, 6))
lapply(mtcars, function(x) hist(x, main="Histogram",xlab="Data"))

mtcars$vsFactor <- as.factor(mtcars$vs) # straight engine converted to grouping variable 
mtcars$amFactor <- as.factor(mtcars$am) # transmission

leveneTest(mpg ~ vsFactor, data = mtcars)
leveneTest(mpg ~ amFactor, data = mtcars)




