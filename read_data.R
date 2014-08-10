# there is a small python script to create a subset of data named filtered.csv
read_data <- function(filename) {
    data = read.csv(filename, sep=";", na.strings="?" )
    data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%OS")
    data    
}