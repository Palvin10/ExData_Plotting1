housedata <-read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?")
housedata_subset <-rbind(housedata[housedata$Date=="1/2/2007",],housedata[housedata$Date=="2/2/2007",]) ##subset columns if date is 01-02-2007 and 02-02-2007
housedata_subset$Date <- as.Date(housedata_subset$Date, format="%d/%m/%Y") ## convert date
housedata_subset<-cbind(housedata_subset, "DateTime" = as.POSIXct(paste(housedata_subset$Date, housedata_subset$Time)))
str(housedata_subset) ## check variable type

##Plot 1 histogram of x= global active power and y= frequency
hist(as.numeric(housedata_subset$Global_active_power), col="Red", main="Global Active Power", xlab="Global Active power (kilowatts)", ylab="Frequency")  

png(filename = "Rplot1_palvin.png",
    width = 480, height = 480, units = "px", pointsize = 12,
    bg = "white",  res = NA)
dev.off()





