# Assignment 1
# Name - Mudit Balooja
# Roll no - 2019258

# Q2
# (a)

# simulate discrete markov chains acc to trans matrix P for 50 iterations
run.mc.sim <- function(P, num.iters = 50) {
  # no. of states
  num.states <- nrow(P)
  # stores the states X_t through time
  states <- numeric(num.iters)
  # initialize variable for first state 
  states[1] <- 1
  for(t in 2:50) {
    # pv for next state
    p  <- P[states[t-1], ]
    ## draw from multinomial and determine state
    states[t] <- which(rmultinom(1, 1, p) == 1)
  }
  return(states)
}

C1 <- c(1/3, 1/3, 0, 0, 0, 0, 0, 0)
C2 <- c(2/3, 1/3, 1/3, 0, 0, 0, 0, 0)
C3 <- c(0, 1/3, 1/3, 1/3, 0, 0, 0, 0)
C4 <- c(0, 0, 1/3, 1/3, 1/3, 0, 0, 0)
C5 <- c(0, 0, 0, 1/3, 1/3, 1/3, 0, 0)
C6 <- c(0, 0, 0, 0, 1/3, 1/3, 1/3, 0)
C7 <- c(0, 0, 0, 0, 0, 1/3, 1/3, 2/3)
C8 <- c(0, 0, 0, 0, 0, 0, 1/3, 1/3)
P <- matrix(c(C1,C2,C3,C4,C5,C6,C7,C8),nrow=8,ncol=8)
# trans matrix
print(P)

chains <- 5
steps <- 50
chain.states <- matrix(NA, ncol = chains, nrow = steps)
for(c in seq_len(num.chains)){
  chain.states[,c] <- run.mc.sim(P)
}
matplot(chain.states, type='l', lty=1, col=1:5, ylim=c(0,9), ylab='state', xlab='time')
abline(h=1, lty=3)
abline(h=8, lty=3)

# (b)
tm <- diag(8)
for (i in 1:50) {
  tm <- tm %*% P
  if(i == 10) {
    print("P 10")
    print(tm)
  }
  if(i == 20) {
    print("P 20")
    print(tm)
  }
  if(i == 49) {
    print("P 50")
    print(tm)
  }
}
