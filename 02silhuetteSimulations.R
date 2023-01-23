library(cluster)
par(mfrow=c(1,3))
c1 <- c(x=0, y=0)
v1 <- 1
c2 <- c(x=4, y=4)
v2 <- 2
n1 <- 50
n2 <- 100
x1 <- rnorm(n1, c1[1], v1)
y1 <- rnorm(n1, c1[2], v1)

x2 <- rnorm(n2, c2[1], v2)
y2 <- rnorm(n2, c2[2], v2)

plot(c(x1, x2),
     c(y1, y2),
     type="n",
     main="Data")
points(x1, y1, col=2)
points(x2, y2, col=3)


d <- dist(cbind(c(x1, x2),
     c(y1, y2)))
#cl1 <- hclust(d)
cl1 <- hclust(d, method="ward.D")
#cl1 <- hclust(d, method="ward.D2")
cut01 <- cutree(cl1, k=2)
plot(cbind(c(x1, x2),
           c(y1, y2)),
     col=cut01,
     main="Clustering")


plot(silhouette(cut01, d))

sil <- silhouette(cut01, d)
str(sil)
tapply(sil[,3], sil[,1], mean)
mean(tapply(sil[,3], sil[,1], mean))
mean(sil[,3])
