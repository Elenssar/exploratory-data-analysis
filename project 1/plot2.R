source("readdata.R")

png("plot2.png")
plot(x=plotdata$DateTime, y=plotdata$Global_active_power, type="l", lwd=0.5, xlab="", ylab="Global Active Power (kilowatts)")
dev.off()