# Week 5 Data Visualization Lab

#install the package ggplot2
#install.packages("ggplot2")
library(ggplot2)
ggplot(cars)
View(cars)
ggplot(cars)
# A quick base R plot
plot(cars)

# First ggplot
ggplot(data=cars) +
  aes(x=speed, y=dist) +
  geom_point()

p <- ggplot(data=cars) +
      aes(x=speed, y=dist) +
      geom_point()
# Add a line geom with geom_line()
p + geom_line()

# Add a trend line close to the data
p + geom_smooth()

p + geom_smooth(method="lm")




# Read in our drug expression data
url<- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

round( (table(genes$State)/ nrow(genes))*100, 2)


#First plot attempt
g <- ggplot(data=genes) +
  aes(x=Condition1, y=Condition2, col=State) +
  geom_point()

g

# Add some color
g + scale_color_manual( values=c("blue", "gray", "red")) + 
  labs(title="Gene expression changes", x="Control(no drug)") +
  theme_bw()






