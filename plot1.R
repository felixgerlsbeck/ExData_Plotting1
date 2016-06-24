setwd("~/Dropbox/Data_Science/ExData_Plotting1")

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data$Time <- strptime(data$Time, "%H:%M:%S")
data_feb2007 <- subset(data, Date == "2007-02-01" | Date == "2007-02-02")

png("plot1.png")
with(data_feb2007, hist(Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)"))
dev.off()

