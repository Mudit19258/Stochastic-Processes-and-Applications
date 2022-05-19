# Assignment 2
# Name - Mudit Balooja
# Roll no - 2019258

# Q1
# (a)
set.seed(123)
# probability
p <- 0.2
# size
N <- 100
pascal.data <- rnbinom(N, size = 10, prob = p)
plot(pascal.data, main = "Simulating sum of interarrival times", xlab = "trials", ylab = "observations")

# (b)
t <- c(10,50,100,500)
# for t = 10
data1 <- rbinom(N, size = t[1], prob = p)
plot(data1, main = "simulating Nt for t = 10", xlab = "number of simulations", ylab = "number of arrivals")

data2 <- rbinom(N, size = t[2], prob = p)
plot(data2, main = "simulating Nt for t = 50", xlab = "number of simulations", ylab = "number of arrivals")

data3 <- rbinom(N, size = t[3], prob = p)
plot(data3, main = "simulating Nt for t = 100", xlab = "number of simulations", ylab = "number of arrivals")

data4 <- rbinom(N, size = t[4], prob = p)
plot(data4, main = "simulating Nt for t = 500", xlab = "number of simulations", ylab = "number of arrivals")
