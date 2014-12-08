data <- read.table("household_power_consumption.txt",sep=";",na.strings="?",comment.char = "",header=TRUE,
                   colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
dt <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
x <- as.POSIXct(paste(dt$Date, dt$Time), format="%d/%m/%Y %H:%M:%S")

png(file="plot4.png", width=480, height=480, units = "px")
par(mfrow=c(2,2))
par(bg="transparent")

plot(x,dt$Global_active_power, xlab="", ylab="Global Active Power",type="l")
plot(x,dt$Voltage, xlab="datetime", ylab="Voltage",type="l")
plot(x,dt$Sub_metering_1, xlab="", ylab="Energy sub metering",type="l")
lines(x,dt$Sub_metering_2,col="red")
lines(x,dt$Sub_metering_3,col="blue")
legend("topright", legend=colnames(dt)[7:9],col=c("black","red","blue"),lty = 1, bty="n")
plot(x,dt$Global_reactive_power, xlab="datetime", ylab="Global_reactive_power", type="l")

dev.off()
