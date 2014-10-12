da<-read.table("household_power_consumption.txt",sep=";",header=T)
da$Date<-as.Date(da$Date,"%d/%m/%Y")
da1<-subset(da,Date=="2007-02-01"|Date=="2007-02-02")
hist(da1$Global_active_power,xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")
