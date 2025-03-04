# plot3.R
load("data_subset.RData")
png("plot3.png", width=480, height=480)
plot(data_subset$DateTime, data_subset$Sub_metering_1, type="l", col="black", ylab="Energy sub metering", xlab="")
lines(data_subset$DateTime, data_subset$Sub_metering_2, col="red")
lines(data_subset$DateTime, data_subset$Sub_metering_3, col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, lwd=1)
dev.off()
