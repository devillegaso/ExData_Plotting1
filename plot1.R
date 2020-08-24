setwd("C:/Users/danie/OneDrive/Documentos/Daniel/Formación complementaria/Data Analysis/Exploratory Data Analysis/ExData_Plotting1")
archivo<-read.csv(file="household_power_consumption.txt",sep=";")
archivo<-subset(archivo,archivo$Date=="1/2/2007"|archivo$Date=="2/2/2007")
archivo$Global_active_power<-as.numeric(archivo$Global_active_power)
png("plot1.png", width = 480, height = 480)
hist(archivo$Global_active_power,xlab="Global Active Power (kilowatts)",main="Global Active Power",col="red",xlim=c(0,6))
dev.off()


