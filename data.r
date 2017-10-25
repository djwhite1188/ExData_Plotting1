link <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
saved <- "EPC.zip"
download.file(link, saved)

library(utils)
unzip(saved)

house_power <- read.table("~/household_power_consumption.txt", sep = ";", header = TRUE)

#DATE & TIME STRIPPING
#strptime()
#as.Date()

#house_power$Time <- strptime(house_power$Time, "%H:%M:%S")
#house_power$datetime <- paste(house_power$Date, house_power$Time)
#house_power$datetime <- strptime(house_power$datetime, "%d/%m/%Y %H:%M:%S")

#head(house_power$datetime)


house_power$timestamp<-strptime(paste(house_power$Date, house_power$Time), "%d/%m/%Y %H:%M:%S")
house_power$Date <- as.Date(house_power$Date, "%d/%m/%Y")

#PLOT 1
#Title = Global Active Power
#xlab = Global Active Power (kilowatts)
#ylab = Frequency
#Color = orange

#Our overall goal here is simply to examine how household energy usage varies over a 2-day period in February, 2007. 
#2007-02-01 and 2007-02-02

sub_house_power <- house_power[house_power$Date %in% c(as.Date("2007-02-01"), as.Date("2007-02-02")),]

sub_house_power$GAP_freq <- (as.numeric(as.character(sub_house_power$Global_active_power[sub_house_power$Global_active_power!="?"])))
sub_house_power$Sub_metering_1 <- (as.numeric(as.character(sub_house_power$Sub_metering_1[sub_house_power$Sub_metering_1!="?"])))
sub_house_power$Sub_metering_2 <- (as.numeric(as.character(sub_house_power$Sub_metering_2[sub_house_power$Sub_metering_2!="?"])))
sub_house_power$Sub_metering_3 <- (as.numeric(as.character(sub_house_power$Sub_metering_3[sub_house_power$Sub_metering_3!="?"])))
sub_house_power$Global_reactive_power <- (as.numeric(as.character(sub_house_power$Global_reactive_power[sub_house_power$Global_reactive_power!="?"])))
