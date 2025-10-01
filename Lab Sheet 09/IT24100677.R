setwd("C:\\Users\\HP\\OneDrive\\Desktop\\IT24100677")
getwd()
# Exercise: Baking time
set.seed(123)  
bake <- rnorm(25, mean = 45, sd = 2)

#sample t-test
t.test(bake, mu = 46)

t.test(bake, mu = 46, alternative = "less", conf.level = 0.95)
