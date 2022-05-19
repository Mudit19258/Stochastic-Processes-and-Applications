# Q2
# a
set.seed(12345)
pois.data1<-rpois(n = 100, lambda = 20*t[2])
plot(density(pois.data1), main = "Density of number of arrivals")
pois.data2<-rpois(n = 100, lambda = 20*t[3])
plot(density(pois.data2), main = "Density of number of arrivals")

# b
plot(ecdf(pois.data1), main = "CDF of number of arrivals")
plot(ecdf(pois.data2), main = "CDF of number of arrivals")