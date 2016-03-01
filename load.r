pwrcons <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", colClasses = rep("character", times=9))
# convert columns
pwrcons$Date <- as.Date(pwrcons$Date, format="%d/%m/%Y")
pwrcons$Global_active_power <- as.double(pwrcons$Global_active_power)
pwrcons$Global_reactive_power <- as.double(pwrcons$Global_reactive_power)
pwrcons$Voltage <= as.double(pwrcons$Voltage)
pwrcons$Global_intensity <- as.double(pwrcons$Global_intensity)
pwrcons$Sub_metering_1 <- as.double(pwrcons$Sub_metering_1)
pwrcons$Sub_metering_2 <- as.double(pwrcons$Sub_metering_2)
pwrcons$Sub_metering_3 <- as.double(pwrcons$Sub_metering_3)
# subset for two days
dates <- as.Date(c("2007-02-01", "2007-02-02"))
str(dates)
pwrsub <- subset(pwrcons, Date == dates[1] | Date == dates[2])
# save data
write.table(pwrsub, "subset.txt", sep=";")
library(xlsx)
write.xlsx(pwrsub, "subset.xlsx")
