

# function to test whether dots are insside a circle centered at (0,0)
# takes a two-column object
# returns logical vector
is.insideCircle <- function(co, r=0.5, offs=c(0,0)){
  sqrt((co[,1]+offs[1])^2 + (co[,2]+offs[2])^2) <= r
}

# make.circleCloud <- function(n, offs=c(0,0)){
#   raw <- cbind(x=runif(n)-0.5, y=runif(n)-0.5)
#   circ <- raw[is.insideCircle(raw),]
#   circ[,1] <- circ[,1] + offs[1]
#   circ[,2] <- circ[,2] + offs[2]
#   circ
# }



make.crescent <- function(n){
  raw <- cbind(x=runif(n)-0.5, y=runif(n)-0.5)
  raw[is.insideCircle(raw) & !is.insideCircle(raw, offs=c(0, -0.2)),]
}

# no seed required
set.seed(123)
cres1 <- make.crescent(1000)
cres2 <- make.crescent(1000)
cres2[,2] <- -cres2[,2] -0.1
cres2[,1] <- cres2[,1] + 0.5


cres <- rbind(cres1, cres2)
plot(cres)
cresClass <- cutree(hclust(dist(cres)), k=2) #does not work well
cresClassComplete <- cutree(hclust(dist(cres), method="complete"), k=2)
plot(cres, col=cresClassComplete, main="complete")

cresClassSingle <- cutree(hclust(dist(cres), method="single"), k=2) # as expected
plot(cres, col=cresClassSingle, main="single")

cresClassWard.D <- cutree(hclust(dist(cres), method="ward.D"), k=2) # as expected
plot(cres, col=cresClassWard.D, main="ward.D")

cresClassWard.D2 <- cutree(hclust(dist(cres), method="ward.D2"), k=2) 
plot(cres, col=cresClassWard.D2, main="ward.D2")


cresClassAverage <- cutree(hclust(dist(cres), method="average"), k=2) # as expected
plot(cres, col=cresClassAverage, main="average")

cresClassMcquitty <- cutree(hclust(dist(cres), method="mcquitty"), k=2)
plot(cres, col=cresClassMcquitty, main="mcquitty")

cresClassMedian<- cutree(hclust(dist(cres), method="median"), k=2) 
plot(cres, col=cresClassMedian, main="median")


cresClassCentroid<- cutree(hclust(dist(cres), method="centroid"), k=2)
plot(cres, col=cresClassCentroid, main="centroid")




