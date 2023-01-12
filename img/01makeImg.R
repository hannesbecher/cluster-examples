# Make plots for README

setwd("~/git_repos/cluster-examples/")

# cusion
dat01 <- read.table("data/01cusion.csv",
                    header=T,
                    sep=",")
#png("img/cusion.png", width=6, height=4.5, units = "in", res=75)
plot(y~x,
     col=as.numeric(as.factor(group)),
     data=dat01,
     main="Cusion")
#dev.off()

# swirl
dat02 <- read.table("data/02swirl.csv",
                    header=T,
                    sep=",")
#png("img/swirl.png", width=5, height=5, units = "in", res=75)
plot(y~x,
     col=as.numeric(as.factor(group)),
     data=dat02,
     main="Swirl")
#dev.off()


# two blobs
dat03 <- read.table("data/03twoBlobs.csv",
                    header=T,
                    sep=",")
#png("img/twoBlobs.png", width=6, height=4.5, units = "in", res=75)
plot(y~x,
     col=as.numeric(as.factor(group)),
     data=dat03,
     main="Two blobs")
#dev.off()
