
setwd("~/git_repos/cluster-examples/")


# Cusion dataset ---------------------------------------------------------

dat01 <- read.table("data/01cusion.csv", 
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





# Swirl data --------------------------------------------------------------



dat02 <- read.table("data/02swirl.csv", 
                    header=T,
                    sep=",")
head(dat02)
plot(y~x,
     col=as.numeric(as.factor(group)),
     data=dat02)

cl02 <- hclust(dist(dat02[,1:2]), method = "complete")

cl02wd <- hclust(dist(dat02[,1:2]), method = "ward.D")
cl02wd2 <- hclust(dist(dat02[,1:2]), method = "ward.D2")
cl02single <- hclust(dist(dat02[,1:2]), method = "single")
cl02average <- hclust(dist(dat02[,1:2]), method = "average")
cl02mcquitty <- hclust(dist(dat02[,1:2]), method = "mcquitty")
cl02median <- hclust(dist(dat02[,1:2]), method = "median")
cl02centroid <- hclust(dist(dat02[,1:2]), method = "centroid")



plot(y~x,
     col=cutree(cl02, k=2),
     data=dat02)
plot(y~x,
     col=cutree(cl02wd, k=2),
     data=dat02)
plot(y~x,
     col=cutree(cl02wd2, k=2),
     data=dat02)
plot(y~x,
     col=cutree(cl02average, k=2),
     data=dat02)
plot(y~x,
     col=cutree(cl02centroid, k=2),
     data=dat02)
plot(y~x,
     col=cutree(cl02median, k=2),
     data=dat02)
plot(y~x,
     col=cutree(cl02mcquitty, k=2),
     data=dat02)
plot(y~x,
     col=cutree(cl02single, k=2),
     data=dat02)
