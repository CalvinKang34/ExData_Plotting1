d1<-read.csv(file.choose(),header = T,sep = ";")
d1$Date=strptime(d1$Date,"%d/%m/%Y")
d2<-subset(d1,d1$Date=="2007-02-01"|d1$Date=="2007-02-02")

hist(as.numeric(as.character(d2$Global_active_power)),breaks = 12,
     main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
