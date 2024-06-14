library(ggplot2)

#Normal
n = rnorm(10000)
n_df <- data.frame(weight = n)
ggplot(n_df, aes(x=weight)) + 
  geom_histogram()

#Uniform
u = runif(10000)
u_df <- data.frame(weight = u)
ggplot(u_df, aes(x=weight)) + 
  geom_histogram()

#Chi Squared
c = rchisq(10000, 3)
c_df <- data.frame(weight = c)
ggplot(c_df, aes(x=weight)) + 
  geom_histogram()


## LARGE Ns
#Binomial
bb <- rbinom(n=1000000, size = 10, prob = 0.5)
bb_df <- data.frame(weight = bb)
ggplot(bb_df, aes(x=weight)) + 
  geom_histogram(binwidth = 1)

n = rnorm(1000000)
n_df <- data.frame(weight = n)
ggplot(n_df, aes(x=weight)) + 
  geom_histogram()
