setwd("C:\\Users\\KIIT\\Desktop\\Dissertation")

getwd()

#read data 

d <- read.csv("E_M score in various tumor type.csv")

#matrix

d.val <- data.matrix (d[ ,2:4])

#Calculate mean of column no 2 to 5
d.val <- apply (d.val , 2 , mean)

#calculate the standard deviation
sd(d.val)

#calculate midpoints

mid <-barplot(d.val)

#mycolor

mycol <- c("blue","pink","red","mistyrose")

#barplot

barplot(d.val,
        beside = TRUE,
        ylim =c(-50,50),
        ylab= "EMT score", legend.text = c ("(MLR, KS)", "(MLR, 76GS)", "(76GS, KS)")
        args.legend = list(bty = "n", x = "topright"), col = mycol,
        main="Errors on bar plot",
        font. lab=1, space=1.0,
        axis. 1ty=1,
        width=0.1, cex. axis= 1.5
        cex.names = 1.25,
        cex.1ab 1.25)


#arrows

arrows (xD-mid, yo=d.val-sd(d.val), xi-mid, yl-d.val+sd(d.val), code-3, angle=90. length=0.1)



