file_name <- "~/data.r"
source(file_name)

#Plot 3
#Write the png
png(filename = "~/plot3.png", width = 480, height = 480)

plot(sub_house_power$timestamp, sub_house_power$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(sub_house_power$timestamp, sub_house_power$Sub_metering_2, col = "red")
lines(sub_house_power$timestamp, sub_house_power$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),lwd = c(2,2), col = c("black", "red", "blue"))

#renew the graphics device
dev.off()