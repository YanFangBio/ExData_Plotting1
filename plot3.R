png(file = "plot3.png", bg = "white")
plot(power$Time,power$Sub_metering_1, type = "n", ylab = "Energy sub meeting")
lines(power$Time,power$Sub_metering_1, col = "black")
lines(power$Time,power$Sub_metering_2, col = "red")
lines(power$Time,power$Sub_metering_3, col = "blue")
legend("topright", lwd=1,
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"))
dev.off()
