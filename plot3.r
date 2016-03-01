xrange <- range(idx1)
yrange <- range(pwrsub$Sub_metering_1, pwrsub$Sub_metering_2, pwrsub$Sub_metering_3)
windows(480, 480)
png("plot3.png")
# set up plot
plot(xrange, yrange, type="n", xlab="sample", ylab="Energy sub metering")
# plot lines
lines(idx1, pwrsub$Sub_metering_1[idx1], col="black")
lines(idx1, pwrsub$Sub_metering_2[idx1], col="red")
lines(idx1, pwrsub$Sub_metering_3[idx1], col="blue")
dev.off()
