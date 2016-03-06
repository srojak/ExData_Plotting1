# read the data in using load.r
windows(480, 480)
png("plot1.png")
hist(pwrsub2$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
