plot.3 <- function(data) {
    plot(data$DateTime, data$Sub_metering_1,
         type="l",
         main="",
         xlab="",
         ylab="Energy sub metering")
    
    lines(data$DateTime, data$Sub_metering_2, col = "blue")
    lines(data$DateTime, data$Sub_metering_3, col = "red")
    
    legend("topright", 
           lwd=1,
           col = c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
}


source('read_data.R')    
data <- read_data("filtered.csv")
png(file="plot3.png", width=480, height=480)
plot.3(data)
dev.off()    
