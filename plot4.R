setwd("C:/Users/danie/OneDrive/Documentos/Daniel/Formación complementaria/Data Analysis/Exploratory Data Analysis/ExData_Plotting1")
archivo<-read.csv(file="household_power_consumption.txt",sep=";")
archivo<-subset(archivo,archivo$Date=="1/2/2007"|archivo$Date=="2/2/2007")
archivo$FullDate<-paste(archivo$Date,archivo$Time)
archivo$FullDate<-strptime(archivo$FullDate,format="%d/%m/%Y %H:%M:%S")
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
with(archivo,plot(FullDate,Global_active_power,type="l",lwd=1,ylab="Global Active Power",xlab=""))
with(archivo,plot(FullDate,Voltage,type="l",lwd=1,ylab="Voltage",xlab=""))
with(archivo,plot(FullDate,Sub_metering_1,type="l",lwd=1,ylab="Energy sub metering",xlab=""))
lines(archivo$FullDate,archivo$Sub_metering_2,col="red")
lines(archivo$FullDate,archivo$Sub_metering_3,col="blue")
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
with(archivo,plot(FullDate,Global_reactive_power,type="l",lwd=1,ylab="Global Reactive Power",xlab=""))
dev.off()
