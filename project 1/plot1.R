source("readdata.R")

png("plot1.png")
hist(plotdata$Global_active_power, col="red", xlab="Global Active Power (Kilowatts)", main="Global Active Power")
dev.off()