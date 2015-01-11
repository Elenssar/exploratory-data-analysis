#Reading data, assuming the text file is uncompressed.
data<-read.table("household_power_consumption.txt", sep=";", na.strings="?", header=TRUE)
data_mod<-data
data_mod$Date<-as.Date(data$Date, "%d/%m/%Y")
data_mod$DateTime <- paste(data$Date, data$Time)
data_mod$DateTime <- strptime(data_mod$DateTime, "%d/%m/%Y %H:%M:%S")
plotdata<-data_mod[data_mod$Date>=as.Date("2007-02-01") & data_mod$Date<=as.Date("2007-02-02"),]