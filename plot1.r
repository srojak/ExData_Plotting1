windows(480, 480)
png("plot1.png")
hist(pwrsub$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
dev.off()
