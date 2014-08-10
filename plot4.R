plot.1 <- function(data) {
    plot(data$DateTime, data$Global_active_power, 
         type="l",
         main="",
         xlab="",
         ylab="Global Active Power")    
}

plot.2 <- function(data) {
    plot(data$DateTime, data$Global_active_power, 
         type="l",
         main="",
         xlab="datetime",
         ylab="Voltage")    
}

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
           bty="n",
           col = c("black", "red", "blue"),
           c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    
}

plot.4 <- function(data) {
    plot(data$DateTime, data$Global_reactive_power,
         type="l",
         main="",
         xlab="datetime",
         ylab="Global Reactive Power")    
}


plot.all <- function(data) {
    par(mfrow = c(2,2),
        mar = c(4,4,2,2)        
        )
    plot.1(data)
    plot.2(data)
    plot.3(data)
    plot.4(data)
}


source("read_data.R")
data <- read_data('filtered.csv') 
png(file="plot4.png", width=480, height=480)
plot.all(data)
dev.off()
