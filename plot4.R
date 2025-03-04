# plot4.R
load("data_subset.RData")
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(data_subset$DateTime, data_subset$Global_active_power, type="l", ylab="Global Active Power", xlab="")
plot(data_subset$DateTime, data_subset$Voltage, type="l", ylab="Voltage", xlab="datetime")
plot(data_subset$DateTime, data_subset$Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="")
lines(data_subset$DateTime, data_subset$Sub_metering_2, col="red")
lines(data_subset$DateTime, data_subset$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, lwd=1)
plot(data_subset$DateTime, data_subset$Global_reactive_power, type="l", ylab="Global Reactive Power", xlab="datetime")
dev.off()
