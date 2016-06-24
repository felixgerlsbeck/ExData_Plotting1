setwd("~/Dropbox/Data_Science/ExData_Plotting1")

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?")
data_feb2007 <- subset(data, Date == "1/2/2007" | Date == "2/2/2007")
data_feb2007$Date_Time <- with(data_feb2007, as.POSIXct(paste(Date, Time), format = "%d/%m/%Y %H:%M:%S"))

png("plot3.png")
with(data_feb2007, plot(Date_Time, Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering"))
with(data_feb2007, lines(Date_Time, Sub_metering_1, col = "black"))
with(data_feb2007, lines(Date_Time, Sub_metering_2, col = "red"))
with(data_feb2007, lines(Date_Time, Sub_metering_3, col = "blue"))
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = 1, col = c("black", "red", "blue"))
dev.off()