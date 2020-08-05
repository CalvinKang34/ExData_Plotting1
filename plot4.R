d1<-read.csv(file.choose(),header = T,sep = ";")
d2<-subset(d1,d1$Date=="1/2/2007"|d1$Date=="2/2/2007")
a<-paste(d2$Date,d2$Time,sep=" ")
d2<-cbind(a,d2)
d2$a=strptime(d2$a,"%d/%m/%Y %H:%M:%S")

par(mfrow = c(2, 2))
plot(x=d2$a,y=as.numeric(as.character(d2$Global_active_power)),type="l",col="black",xlab="",ylab="Global Active Power (kilowatts)")
plot(x=d2$a,y=as.numeric(as.character(d2$Voltage)),type="l",col="black",xlab="datetime",ylab="Voltage")

plot(x=d2$a,y=d2$Sub_metering_1,type="l",col="black",xlab="",ylab="Energy sub metering")
lines(as.numeric(as.character(d2$Sub_metering_1)), type = "l", col = "black")
lines(x=d2$a,as.numeric(as.character(d2$Sub_metering_2)), type = "l", col = "red")
lines(x=d2$a,as.numeric(as.character(d2$Sub_metering_3)), type = "l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black","red","blue"),lty=1,cex=0.5)

plot(x=d2$a,y=as.numeric(as.character(d2$Global_reactive_power)),type="l",col="black",xlab="datetime",ylab="Global_reactive_power")
