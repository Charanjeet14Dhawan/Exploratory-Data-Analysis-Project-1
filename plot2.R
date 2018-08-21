datafile<-"C:/Users/Hunny/Documents/Coursera/household_power_consumption.txt"
data <- read.table(datafile,header = TRUE,stringsAsFactors = FALSE,sep = ";")
requiredData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(requiredData$Date, requiredData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(requiredData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()