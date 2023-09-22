
# anscombe data set is already pre-loaded for you let's see 
# what we have in this data set
data(anscombe)

# let's compute the mean and std of (xi, yi) 
# and the correlation coefficent between xi and yi
print(" Mean(x), mean(y), std(x), std(y)")
c(mean(anscombe$x1), mean(anscombe$y1), sd(anscombe$x1), sd(anscombe$y1), cor(anscombe$x1, anscombe$y1))
c(mean(anscombe$x2), mean(anscombe$y2), sd(anscombe$x2), sd(anscombe$y2), cor(anscombe$x2, anscombe$y2))
c(mean(anscombe$x3), mean(anscombe$y3), sd(anscombe$x3), sd(anscombe$y3), cor(anscombe$x3, anscombe$y3))
c(mean(anscombe$x4), mean(anscombe$y4), sd(anscombe$x4), sd(anscombe$y4), cor(anscombe$x4, anscombe$y4))


library(ggplot2)
library(ggpubr)

# make the plot
p1 <- ggplot(anscombe, aes(x=x1, y=y1)) + geom_point()
p2 <- ggplot(anscombe, aes(x=x2, y=y2)) + geom_point()
p3 <- ggplot(anscombe, aes(x=x3, y=y3)) + geom_point()
p4 <- ggplot(anscombe, aes(x=x4, y=y4)) + geom_point()
# visualize the plot
ggarrange(p1, p2, p3, p4, labels = c("A", "B", "C", "D"), ncol = 2, nrow = 2)



# Starts with stars data frame
data(stars)

# let's take a look at stars data set
head(stars)

# Initiate a ggplot object
# make a scatter plot, geom_point
# aes() maps variables to x and y-axis  (x = magnitude, y = temp)
ggplot(data=stars, aes(x=magnitude, y=temp)) + geom_point()

# now let's change the scale
ggplot(data=stars, aes(x=magnitude, y=temp)) + geom_point() + scale_y_log10()

# color code them based on their type
ggplot(data=stars, aes(x=magnitude, y=temp, col=type)) + geom_point() + scale_y_log10()








