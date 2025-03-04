# plot2.R
load("data_subset.RData")
png("plot2.png", width=480, height=480)
plot(data_subset$DateTime, data_subset$Global_active_power, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
