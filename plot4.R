source("getData.R")

df <- getData()

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
par(mar=c(3.8,3.8,2.1,2.1))
with(febData,{
    #1st plot
    plot(Date,Global_active_power,type="l",ylab="Global Active Power",xlab="")
    #second plot
    plot(Date,Voltage,type="l",ylab="Voltage", xlab="datetime")
    #3rd plot - init
    plot(Date,Sub_metering_1,ylab="Energy sub metering",xlab="",type="n")
    lines(Date,Sub_metering_1)
    lines(Date,Sub_metering_2, col="red")
    lines(Date,Sub_metering_3, col="blue")
    legend("topright",lwd=1,col=c("black","blue","red"),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
    plot(Date,Global_reactive_power,type="l",ylab="Global_reactive_power", xlab="datetime")
} 
)
dev.off()