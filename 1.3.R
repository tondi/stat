library(data.table)
table <- data.table(answer = sample(x = c("a", "b", "c", "d", "e"), size = 100, replace = TRUE))
table$category[table$answer == "a" | table$answer == "b"] = "CategoryOne"
table$category[table$answer == "c" | table$answer == "d"] = "CategoryTwo"
table$category[table$answer == "e"] = "CategoryThree"
print(table)
