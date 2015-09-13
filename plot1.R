source("getData.R")

df <- getData()

png("plot1.png", width=480, height=480)
par(mfrow = c(1,1))
hist(df$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")
dev.off()
