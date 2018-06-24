
##plot 4 four plots
par(mfrow=c(2,2))
plot(housedata_subset$Global_active_power ~ housedata_subset$DateTime, type="l", xlab="", ylab="Global Active Power")
plot(housedata_subset$Voltage ~ housedata_subset$DateTime, type="l", xlab="DateTime", ylab="Voltage")
with(housedata_subset, {plot(Sub_metering_1 ~ DateTime, type="l", xlab="", ylab="Energy sub metering")})
lines(housedata_subset$Sub_metering_2 ~ housedata_subset$DateTime, col = 'Red')
lines(housedata_subset$Sub_metering_3 ~ housedata_subset$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
plot(housedata_subset$Global_reactive_power ~ housedata_subset$DateTime, type="l", xlab="DateTime", ylab="Global_reactive_power")

png("Rplot4_palvin.png", width=480, height=480)
dev.off()