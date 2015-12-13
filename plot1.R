# PLOT 1 
# - Pull global active power data betwen 1/2/2007 and 2/2/2007 and plot
setwd( "/Users/lylestewart/Desktop")
HCFile <- "./data/household_power_consumption.txt"
HouseholdPowerData <- read.table(HCFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetHouseholdPowerData <- HouseholdPowerData[HouseholdPowerData$Date %in% c("1/2/2007","2/2/2007") ,]

str(subSetHouseholdPowerData)
globalActivePower <- as.numeric(subSetHouseholdPowerData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()