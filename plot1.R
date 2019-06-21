library(readr)
library( stringr)
file <- "household_power_consumption.txt"
power <- read_csv2( file = file )
power <- power[power$Date == c("1/2/2007", "2/2/2007"),]

png(file = "plot1.png", bg = "white")
hist(as.numeric(power$Global_active_power), 
     col = "red", 
     xlab = "Global Active Power(kilowatts)", 
     main = "Global Active Power")
dev.off()
