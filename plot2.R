d1<-read.csv(file.choose(),header = T,sep = ";")
d2<-subset(d1,d1$Date=="1/2/2007"|d1$Date=="2/2/2007")
a<-paste(d2$Date,d2$Time,sep=" ")
d2<-cbind(a,d2)
d2$a=strptime(d2$a,"%d/%m/%Y %H:%M:%S")

plot(x=d2$a,y=as.numeric(as.character(d2$Global_active_power)),type="l",col="black",xlab="",ylab="Global Active Power (kilowatts)")

