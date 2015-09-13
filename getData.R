
getData <- function() {

    power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character", "character", rep("numeric", 7)))
    
    ## data.table is buggy - same code works just fine with dataframe
    ##power <- as.data.table(power)
    
    ## filter before converting - its easies
    febData <- power[power$Date %in% c("1/2/2007","2/2/2007"),]
    
    ## convert only filtered data for performance
    febData$Date <- strptime(paste(febData$Date, febData$Time), "%d/%m/%Y %H:%M:%S")     #build a single var with date and time

    ## remove Time variable now - useless
    febData$Time <- NULL
    
    return(febData)
}
