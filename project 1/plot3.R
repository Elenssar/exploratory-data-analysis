source("readdata.R")

png("plot3.png")
plot(x=plotdata$DateTime, y=plotdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(x=plotdata$DateTime, y=plotdata$Sub_metering_2, col="red")
lines(x=plotdata$DateTime, y=plotdata$Sub_metering_3, col="blue")
legend("topright", col=c("black","red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=c(1,1) )
dev.off()