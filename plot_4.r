#Plot 4
#Write the png
png(filename = "~/plot4.png", width = 480, height = 480)

par(mfrow = c(2,2), mfcol = c(2,2))
#PLOT TOP LEFT
plot(sub_house_power$timestamp,sub_house_power$GAP_freq, type = "l",xlab = "", ylab = "Global Active Power (kilowatts)")
plot(sub_house_power$timestamp, sub_house_power$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(sub_house_power$timestamp, sub_house_power$Sub_metering_2, col = "red")
lines(sub_house_power$timestamp, sub_house_power$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lwd = c(2,2), col = c("black", "red", "blue"))
plot(sub_house_power$timestamp,sub_house_power$Voltage, type = "l",xlab = "datetime", ylab = "Voltage")
plot(sub_house_power$timestamp,sub_house_power$Global_reactive_power, type = "l",xlab = "datetime", ylab = "Global_reactive_power")

#renew the graphics device
dev.off()