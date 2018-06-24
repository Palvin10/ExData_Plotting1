
##Plot 2 Daily use of global active power
plot(housedata_subset$Global_active_power ~ housedata_subset$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")

png("Rplot2_palvin.png", width=480, height=480)
dev.off()
