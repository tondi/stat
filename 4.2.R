install.packages("psych")

results <- matrix(c(315, 101, 108, 32), nrow=2, ncol=2, byrow = TRUE)

expected <- matrix(
  c(9, 3, 3, 1),
  nrow=2,
  ncol=2,
  byrow = TRUE
)

# lm(results[2][2] ~ ., data = results)  

podzielone <- results / expected

chisq.test(podzielone, expected)
# X-squared = 0.0035162, df = 1, p-value = 0.9527
# eksperyment nie potwierdzil rozwazan teorytycznych na poziomie istotnosci = 0.05
