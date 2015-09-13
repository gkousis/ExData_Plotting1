source("getData.R")

df <- getData()

png("plot2.png", width=480, height=480)
par(mfrow = c(1,1))
plot(df$Date, df$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")

dev.off()