source("readdata.R")

png("plot4.png")
par(mfrow = c(2, 2))
with(plotdata, {
  plot(x=DateTime, y=Global_active_power, type="l", xlab="", ylab="Global Active Power")
  
  plot(x=DateTime, y=Voltage, type="l", xlab="datetime", ylab="Voltage")
  
  plot(x=plotdata$DateTime, y=plotdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
  lines(x=plotdata$DateTime, y=plotdata$Sub_metering_2, col="red")
  lines(x=plotdata$DateTime, y=plotdata$Sub_metering_3, col="blue")
  legend("topright", col=c("black","red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),bty="n", lty=c(1,1) )

  plot(x=DateTime, y=Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
         
})

dev.off()