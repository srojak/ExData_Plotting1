# read the data in using load.r
windows(480, 480)
png("plot2.png")
plot(pwrsub2$DtTm, pwrsub2$Global_active_power, ylab="Global Active Power (kilowatts)", type="l", xlab="sample")
dev.off()
