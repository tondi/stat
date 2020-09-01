coin <- sample(x = c("heads", "tails"), size = 3, replace = TRUE)
table(coin)
frequency <- as.data.frame(table(coin))$Freq[1]
dice <- sample(x = c(1,2,3,4,5,6), size = frequency, replace = TRUE)
result <- sum(dice)
print(result)

