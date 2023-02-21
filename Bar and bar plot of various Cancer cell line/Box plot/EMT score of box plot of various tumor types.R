setwd("C:\\Users\\KIIT\\Desktop\\Dissertation")

getwd()

d <- read.csv("E_M score in various tumor type.csv")


#Format the bar plot------

#bar plot for all the samples E count,E/M count and M count of various tumor cell types

#matrix
library(Matrix)
library(matrixStats)
library(affinitymatrix)
library(plot.matrix)

d.val <- data.matrix(d[ ,1:4])

#color barplot for various cancercelltypes that includes E count ,E/M count and M count 

mycol <- c("blue","pink","paleturquoise","mistyrose")



#Create the bar plot



#barplot
barplot(d.val,
        beside = TRUE,
        ylim =c(0,50),
        ylab = "EMT score",
        legend.text = c ("(MLR , KS)","(MLR,76GS)","(76GS,KS)"),
        args.legend = list(bty = "n", x = "topright"),
        col = mycol,
        main="Errors on bar plot",
        font.lab=1,
        space=1.0,
        axis.lty=1,
        width=0.5,
        cex.axis = 1.25,
        cex.names = 1.25,
        cex.lab =1.25)

#mean of various E/M count in different tumor types

d.val <- apply (d.val , 2 , mean)


#standard deviation of various EMT scores
sd(d.val)

#mid_point of various EMT scores

mid <-barplot(d.val)



# Add error bars
arrows(x0=m, y0=y-sd(d.val), x1=m, y1=y+sd(d.val), code=3, angle=90, length=0.1)



