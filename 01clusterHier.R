
setwd("~/git_repos/cluster-examples/")


# Cusion dataset ---------------------------------------------------------

dat01 <- read.table("data/01cussion.csv", 
                    header=T,
                    sep=",")
head(dat01)
plot(y~x,
     col=as.numeric(as.factor(group)),
     data=dat01)

cl01 <- hclust(dist(dat01[,1:2]), method = "complete")

cl01wd <- hclust(dist(dat01[,1:2]), method = "ward.D")
cl01wd2 <- hclust(dist(dat01[,1:2]), method = "ward.D2")
cl01single <- hclust(dist(dat01[,1:2]), method = "single")
cl01average <- hclust(dist(dat01[,1:2]), method = "average")
cl01mcquitty <- hclust(dist(dat01[,1:2]), method = "mcquitty")
cl01median <- hclust(dist(dat01[,1:2]), method = "median")
cl01centroid <- hclust(dist(dat01[,1:2]), method = "centroid")

cutree(cl01, k=2)

plot(y~x,
     col=cutree(cl01, k=2),
     data=dat01)
plot(y~x,
     col=cutree(cl01wd, k=2),
     data=dat01)
plot(y~x,
     col=cutree(cl01wd2, k=2),
     data=dat01)
plot(y~x,
     col=cutree(cl01average, k=2),
     data=dat01)
plot(y~x,
     col=cutree(cl01centroid, k=2),
     data=dat01)
plot(y~x,
     col=cutree(cl01median, k=2),
     data=dat01)
plot(y~x,
     col=cutree(cl01mcquitty, k=2),
     data=dat01)
plot(y~x,
     col=cutree(cl01single, k=2),
     data=dat01)
