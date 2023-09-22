library(ggplot2)
data(diamonds)
diamonds<-as.data.frame(diamonds)
nrow(diamonds)
ncol(diamonds)
ggplot(data=diamonds, aes(x=price)) + geom_histogram() 
hist(diamonds$price)
ggplot(data=diamonds, aes(x=cut)) + geom_bar() 
barplot(table(diamonds$cut))
table(diamonds$cut)
ggplot(data=diamonds, aes(x=carat, y=price, color=clarity))+ 
  geom_point()+ geom_smooth(method="lm")
ggplot(data=diamonds, aes(x=price, y=depth,))+ 
  geom_point()+ geom_smooth(method="lm")
ggplot(data=diamonds, aes(x=price, y=depth, color = clarity))+ 
  geom_point()+ geom_smooth(method="lm")
ggplot(data=diamonds, aes(x=price)) + geom_histogram() + facet_wrap(~clarity)
ggplot(data=diamonds, aes(x=price)) + geom_histogram() + facet_wrap(~clarity, scales ="free_y")
diamonds$volume <- diamonds$x * diamonds$y * diamonds$z
ggplot(data=diamonds, aes(x=carat, y=volume)) + geom_point() + geom_smooth(method = "lm")
bases <- c("A", "T", "C", "A", "G", "A")
bases %in% c("A", "T") 
sum(c(TRUE, FALSE, TRUE))
mean(c(TRUE, FALSE, TRUE))

sum(bases == "A")
mean(bases=="A")

sum(bases %in% c("A", "T"))
mean(bases %in% c("A", "T"))
sum(diamonds$cut %in% c("Ideal","Premium") & diamonds$color %in% c("D", "E") & diamonds$clarity %in% c("IF", "VVS1"))

diamonds$fourC <- ifelse(diamonds$cut %in% c("Ideal","Premium") & diamonds$color %in% c("D", "E") & diamonds$clarity %in% c("IF", "VVS1") & diamonds$carat > quantile(diamonds$carat, .75), "yes", "no")
table(diamonds$fourC)
