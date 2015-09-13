source("getData.R")

df <- getData()


png("plot3.png", width=480, height=480)
par(mfrow = c(1,1))
with(df,{plot(Date,Sub_metering_1,ylab="Energy sub metering",type="n")
    lines(Date,Sub_metering_1)
    lines(Date,Sub_metering_2, col="red")
    lines(Date,Sub_metering_3, col="blue")
    legend("topright",lwd=1,col=c("black","blue","red"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)
} 
)
dev.off()

