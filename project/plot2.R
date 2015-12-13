# PlOT 2 
setwd( "/Users/lylestewart/Desktop")
HCFile <- "./data/household_power_consumption.txt"
HouseholdPowerData <- read.table(HCFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetHouseholdPowerData <- HouseholdPowerData[HouseholdPowerData$Date %in% c("1/2/2007","2/2/2007") ,]

str(subSetHouseholdPowerData)
datetime <- strptime(paste(subSetHouseholdPowerData$Date, subSetHouseholdPowerData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetHouseholdPowerData$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()