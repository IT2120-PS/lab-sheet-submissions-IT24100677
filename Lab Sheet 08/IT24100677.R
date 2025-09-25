setwd("C:\\Users\\IT24100677\\Desktop\\IT24100677")
getwd()
data2<-read.table("Exercise - LaptopsWeights.txt",header = TRUE)
fix(data2)
attach(data2)
#q1
popmean<-mean(Weight.kg.)
popsd<-sd(Weight.kg.)
cat("Population Mean(True Mean):",popmean,"\n")
cat("Population Standard Deviation(True SD):",popsd,"\n")

#Q2
samples<-c()
sample_names<-c()
for(i in 1:25){
  S<-sample(Weight.kg.,6,replace = TRUE)
  samples<-cbind(samples,S)
  sample_names<-c(sample_names,paste('S',i))
}
colnames(samples)=sample_names
print(s.means<-apply(samples,2,mean))
print(s.sds<-apply(samples,2,sd))

#q3
samplemean<-mean(s.means)
samplesd<-sd(s.means)

popmean
popsd
truesd=popsd/6
samplesd