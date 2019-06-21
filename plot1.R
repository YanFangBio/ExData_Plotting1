library(readr)
library( stringr)
power <- read_csv2( file = file )
file <- "household_power_consumption.txt"
power <- power[power$Date == c("2/1/2007", "2/2/2007"),]

png(file = "plot1.png", bg = "white")
hist(as.numeric(power$Global_active_power), 
     col = "red", 
     xlab = "Global Active Power(kilowatts)", 
     main = "Global Active Power")
dev.off()
