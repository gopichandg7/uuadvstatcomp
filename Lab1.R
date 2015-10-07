
library(datasets)
?datasets
library(help="datasets")
data("state")
?state
state.x77
state.x77[1,]
state.x77["Wyoming",]
state.x77[,"Income"]
state.x77[,c("Income", "Murder")]
colnames(state.x77)
state.x77[c("New York", "Idaho"), c("Illiteracy", "HS Grad")]
state.x77[state.region=="Northeast",]

data <- data.frame(state.x77)

linearresults <- lm(data$Income ~ data$Murder)
summary(linearresults)
plot(linearresults)

?plot

plot1 <- plot(data$Income, data$Murder, type="p")

install.packages("sm")
library("sm")

smresults <- sm.regression(state.x77[,"Income"], state.x77[,"Murder"])
?sm.regression

plot2 <- sm.regression(state.x77[,"Income"], state.x77[,"Murder"], 
                       model = "linear",
                       col = "red")

source("rolldice.R")

options(error=recover)






