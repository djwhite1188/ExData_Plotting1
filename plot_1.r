file_name <- "~/data.r"
source(file_name)

#write the png
png(filename = "~/plot1.png", width = 480, height = 480)

#create the histogram
hist(sub_house_power$GAP_freq, axes = FALSE, col = "orange", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
axis(side = 1, at = c(0,2,4,6))
axis(side = 2, at = c(0,200,400,600,800,1000,1200))

#renew graphics device
dev.off()