install.packages("RWeka")
setwd("D:/Programming/R/J48")

library(RWeka)

ds_diabetes = read.arff("diabetes.arff")
df = J48(attribute_8~., ds_diabetes)
e = evaluate_Weka_classifier(df)
e
plot(df)