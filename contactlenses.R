install.packages("RWeka")

setwd("D:/Programming/R/RWeka")

library("RWeka")

df = read.arff("contact-lenses.arff")
df

smp_size <- floor(0.7 * nrow(df))
dt = sort(sample(nrow(df), smp_size))
train<-df[dt,]
test<-df[-dt,]

NB <- make_Weka_classifier("weka/classifiers/bayes/NaiveBayes")


model = NB(contact_lenses~., train)
evaluate_Weka_classifier(model, newdata = test)

pred = predict(model, df)
pred
df[["contact_lenses"]]
