
##Plot 3 Daily use of 3 sub meters

with(housedata_subset, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")})
lines(housedata_subset$Sub_metering_2 ~ housedata_subset$DateTime, col = 'Red')
lines(housedata_subset$Sub_metering_3 ~ housedata_subset$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

png("Rplot3_palvin.png", width=480, height=480)
dev.off()
