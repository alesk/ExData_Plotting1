plot.1 <- function(data) {
    hist(data$Global_active_power, 
         main="Global Active Power",
         breaks=12, 
         col="red", 
         xlab ="Global Active Power (kilowatts)"
    )    
}


source('read_data.R')
data <- read_data('filtered.csv')
png(file="plot1.png", width=480, height=480)
plot.1(data)
dev.off()
