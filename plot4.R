png(file = "plot4.png", bg = "white")
par(mfrow = c(2,2))
par(mar = c(2,2,2,2))
plot(power$Time,power$Global_active_power, ylab="Global Active Power", 
     xlab="", pch =".", type="l")
plot(power$Time,power$Voltage, ylab="Voltage", xlab = "datetime",
     pch =".", type="l")
plot(power$Time,power$Sub_metering_1, type = "n", ylab = "Energy sub meeting")
lines(power$Time,power$Sub_metering_1, col = "black")
lines(power$Time,power$Sub_metering_2, col = "red")
lines(power$Time,power$Sub_metering_3, col = "blue")
legend("topright", lwd=1,
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"))
plot(power$Time,power$Global_reactive_power, ylab="Global_reactive_power", xlab = "datetime",
     pch =".", type="l")
dev.off()
