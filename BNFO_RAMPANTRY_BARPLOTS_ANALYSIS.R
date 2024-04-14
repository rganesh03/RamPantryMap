#SET PATH FOR THE CSV FILES
setwd("/Users/katherinemcdougal/Desktop/BNFO /CSVs Ram Pantry")


#LOAD ALL THE CSV FILES OF RAM PANTRY DATA INTO DATA.FRAMES 
Chilis <- read.csv("PiCaryBelvidereChilis.xlsx - Sheet1.csv")
Gym <- read.csv("PiCaryStGym.xlsx - Sheet1.csv")
Engin <- read.csv("PiEngineering1.xlsx - Sheet1.csv")
Gateway <- read.csv("PiGateway.xlsx - Sheet1.csv")
Hsci <- read.csv("PiHealthScience.xlsx - Sheet1.csv")
Larr <- read.csv("PiLarrick.xlsx - Sheet1.csv")
MCALC <- read.csv("PiMCALCLobby.xlsx - Sheet1.csv")
McGlo <- read.csv("PiMcGlothian1.xlsx - Sheet1.csv")
Monroe <- read.csv("PiMonroeParkLibrary.xlsx - Sheet1.csv")
Pace <- read.csv("PiPaceCenter.xlsx - Sheet1.csv")
Snead <- read.csv("PiSneadHall.xlsx - Sheet1.csv")
Commons <- read.csv("PiUniversityCommons.xlsx - Sheet1.csv")

## Barplots of all the Data:
##Create a column in the dataframes of just the Hour data
## line 24: import the first two characters
## line 25: incase the value is not padded with a zero, get rid of the colon and change the data type to integer
## line 26Create Barplot of the hourly data. The Table function will count how many instances of each hour are in the data
Chilis$HOUR <- substr(Chilis$TIME,1,2)
Chilis$HOUR <- as.integer(gsub(':',"",Chilis$HOUR))
barplot(table(factor(Chilis$HOUR, level = 1:24)), main = "Cary and Belvidere", xlab = "Time of Day", ylab = "Frequency" )

Gym$HOUR <- substr(Gym$TIME,1,2)
Gym$HOUR <- as.integer(gsub(':',"",Gym$HOUR))
barplot(table(factor(Gym$HOUR, level = 1:24)),xlab = "Time of Day", ylab = "Frequency" ,main = "Cary st. Gym")

Engin$HOUR <- substr(Engin$TIME,1,2)
Engin$HOUR <- as.integer(gsub(':',"",Engin$HOUR))
barplot(table(factor(Engin$HOUR, level = 1:24)), xlab = "Time of Day", ylab = "Frequency" , main= "Engineering Hall")

Gateway$HOUR <- substr(Gateway$TIME,1,2)
Gateway$HOUR <- as.integer(gsub(':',"",Gateway$HOUR))
barplot(table(factor(Gateway$HOUR, level = 1:24)), xlab = "Time of Day", ylab = "Frequency" , main = "Gateway")

Hsci$HOUR <- substr(Hsci$TIME,1,2)
Hsci$HOUR <- as.integer(gsub(':',"",Hsci$HOUR))
barplot(table(factor(Hsci$HOUR, level = 1:24)), xlab = "Time of Day", ylab = "Frequency", main = "Health Science")

Larr$HOUR <- substr(Larr$TIME,1,2)
Larr$HOUR <- as.integer(gsub(':',"",Larr$HOUR))
barplot(table(factor(Larr$HOUR, level = 1:24)), xlab = "Time of Day", ylab = "Frequency" ,main = "Larric Hall")

MCALC$HOUR <- substr(MCALC$TIME,1,2)
MCALC$HOUR <- as.integer(gsub(':',"",MCALC$HOUR))
barplot(table(factor(MCALC$HOUR, level = 1:24)), xlab = "Time of Day", ylab = "Frequency", main = "MCALC")

McGlo$HOUR <- substr(McGlo$TIME,1,2)
McGlo$HOUR <- as.integer(gsub(':',"",McGlo$HOUR))
barplot(table(factor(McGlo$HOUR, level = 1:24)), xlab = "Time of Day", ylab = "Frequency", main = "McGlothian")

Monroe$HOUR <- substr(Monroe$TIME,1,2)
Monroe$HOUR <- as.integer(gsub(':',"",Monroe$HOUR))
barplot(table(factor(Monroe$HOUR, level = 1:24)), xlab = "Time of Day", ylab = "Frequency", main = "Monroe Park Library")

Snead$HOUR <- substr(Snead$TIME,1,2)
Snead$HOUR <- as.integer(gsub(':',"",Snead$HOUR))
barplot(table(factor(Snead$HOUR, level = 1:24)), xlab = "Time of Day", ylab = "Frequency", main = "Snead Hall")

Commons$HOUR <- substr(Commons$TIME,1,2)
Commons$HOUR <- as.integer(gsub(':',"",Commons$HOUR))
barplot(table(factor(Commons$HOUR, level = 1:24)), xlab = "Time of Day", ylab = "Frequency", main = "Student Commons")


Pace$HOUR <- substr(Pace$TIME,1,2)
Pace$HOUR <- as.integer(gsub(':',"",Pace$HOUR))
barplot(table(factor(Pace$HOUR, level = 1:24)), xlab = "Time of Day", ylab = "Frequency", main = "Harris Hall")


# Data Preparation for the Heatmap, Total count of Events 

#name <- c('Chilis', 'Gym','Engineering', 'Gateway', 'Health Science', 'Larric', 'MCALC','McGlothian', 'Cabell Library', 'Pace Center', 'Snead Hall','Commons')
#LENGTH<- c(nrow(Chilis),nrow(Gym),nrow(Engin),nrow(Gateway),nrow(Hsci),nrow(Larr),nrow(MCALC),nrow(McGlo),nrow(Monroe),nrow(Pace),nrow(Snead),nrow(Commons))
#Heatmap <- data.frame(name, LENGTH)



 # CODE GRAVEYARD #

#experiments with histogram plots

#Pace$HOUR <- substr(Pace$TIME,1,2)
#Pace$HOUR <- as.integer(gsub(':',"",Pace$HOUR))
#hist(Pace$HOUR,main = "Harris Hall" ,xlab = "Hour of Day",breaks = seq( 0,24,length=24),xlim = c(0,25),col = "light blue",xaxp=c(0,24, 24))
#hist(Chilis$HOUR,main = "Histogram of Activity" ,xlab = "Hour of Day",breaks = seq( 0,24,length=24),xlim = c(0,25),col = "light blue",xaxp=c(0,24, 24))

# experiments with lines overtop the histograms

##points(seq(min(Chilis$HOUR),max(Chilis$HOUR),length.out=5),dnorm(seq(min(Chilis$HOUR),max(Chilis$HOUR),length.out=5), mean(Chilis$HOUR), sd(Chilis$HOUR))))
##lines(density(Chilis$HOUR, adjust = .001 ), col = "red" )


