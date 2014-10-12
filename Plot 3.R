da<-read.table("household_power_consumption.txt",sep=";",header=T)
da$Date1<-as.Date(da$Date,"%d/%m/%Y")
da1<-subset(da,Date1=="2007-02-01"|Date1=="2007-02-02")
da1$DateAndTime<-paste(da1$Date,da1$Time)
da1$DateAndTime<-strptime(da1$DateAndTime,"%d/%m/%Y %H:%M:%OS")
with(da1, plot(da1$DateAndTime,da1$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering"))
with(da1, plot(da1$DateAndTime,da1$Sub_metering_2,type="l",col="red",xlab="",ylab="Energy sub metering"))

with(da1, plot(DateAndTime, Sub_metering_1, xlab="",ylab = "Energy sub metering", type = "n"))
with(subset(da1), points(DateAndTime, Sub_metering_1, col = "black",type="l")) 
with(subset(da1), points(DateAndTime, Sub_metering_2, col = "red",type="l")) 
with(subset(da1), points(DateAndTime, Sub_metering_3, col = "blue",type="l")) 
legend("topright",lty=1,col = c("black", "red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_1"))

