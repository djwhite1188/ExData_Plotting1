file_name <- "~/data.r"
source(file_name)

#PLOT 2
#write the png
png(filename = "~/plot2.png", width = 480, height = 480)

plot(sub_house_power$timestamp,sub_house_power$GAP_freq, type = "l",xlab = "", ylab = "Global Active Power (kilowatts)")
#renew graphics device
dev.off()