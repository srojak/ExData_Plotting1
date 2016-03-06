# read the data in using load.r
windows(480, 480)
png("plot4.png")
# partition
par(mfcol=c(2,2))
# set up UL plot
plot(pwrsub2$DtTm, pwrsub2$Global_active_power, ylab="Global Active Power (kilowatts)", type="l", xlab="sample")
# set up LL plot
plot(pwrsub2$DtTm, pwrsub2$Sub_metering_1, type="n", xlab="sample", ylab="Energy sub metering")
# plot lines
lines(pwrsub2$DtTm, pwrsub$Sub_metering_1[idx1], col="black")
lines(pwrsub2$DtTm, pwrsub$Sub_metering_2[idx1], col="red")
lines(pwrsub2$DtTm, pwrsub$Sub_metering_3[idx1], col="blue")
# write legend
legend("topright", col=c("black","red","blue"), lwd=c(2,2,2),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
# set up UR plot
plot(pwrsub2$DtTm, pwrsub2$Voltage, type="l", ylab = "Voltage", xlab = "datetime")
# set up LR plot
plot(pwrsub2$DtTm, pwrsub2$Global_reactive_power, type="l", ylab = "Global reactive power", xlab = "datetime")
dev.off()
