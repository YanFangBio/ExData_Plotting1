power$Date<-as.Date(power$Date, format = "%d/%m/%Y")
power$Time<-strptime(paste(power$Date,power$Time),"%F %T")
png(file = "plot2.png", bg = "white")
plot(power$Time,power$Global_active_power, ylab="Global Active Power (kilowatts)", 
     xlab="", pch =".", type="l")
dev.off()
