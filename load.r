# read the data in
pwrcons2 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, na.strings="?")
# subset for two days
pwrsub2 <- subset(pwrcons2, pwrcons2$Date = "1/2/2007" | pwrcons2$Date = "2/2/2007")
# form a datetime column
pwrsub2$DtTm <- strptime(paste(pwrsub2$Date, pwrsub2$Time, sep=" "), format="%d/%m/%Y %H:%M:%S")
# save data
write.table(pwrsub2, "subset.txt", sep=";")
