plot.2 <- function(data) {
    plot(data$DateTime, data$Global_active_power, 
        type="l",
        main="",
        xlab="",
        ylab="Global Active Power (kilowatts)")
}


source('read_data.R')
data <- read_data('filtered.csv')    
png(file="plot2.png", width=480, height=480)
plot.2(data)
dev.off()
