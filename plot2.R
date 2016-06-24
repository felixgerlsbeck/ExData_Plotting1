setwd("~/Dropbox/Data_Science/ExData_Plotting1")

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data_feb2007 <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
data_feb2007$Date_Time <- with(data_feb2007, as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"))

png("plot2.png")
with(data_feb2007, plot(Date_Time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))
dev.off()