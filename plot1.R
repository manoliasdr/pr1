dataFile<-"C:/Documents and Settings/Σωτήρχος/Επιφάνεια εργασίας/coursera/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
head(data)

global_active_power_1<-as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(global_active_power_1,col="darkred",main="Global Active Power", xlab="Global Active Power (kilowatts)")
rug(global_active_power_1)
dev.off()