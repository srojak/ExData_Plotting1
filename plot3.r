# read the data in using load.r
windows(480, 480)
png("plot3.png")
# set up plot
plot(pwrsub2$DtTm, pwrsub2$Sub_metering_1, type="n", xlab="sample", ylab="Energy sub metering")
# plot lines
lines(pwrsub2$DtTm, pwrsub$Sub_metering_1[idx1], col="black")
lines(pwrsub2$DtTm, pwrsub$Sub_metering_2[idx1], col="red")
lines(pwrsub2$DtTm, pwrsub$Sub_metering_3[idx1], col="blue")
# write legend
legend("topright", col=c("black","red","blue"), lwd=c(2,2,2),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
