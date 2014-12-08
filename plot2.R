data <- read.table("household_power_consumption.txt",sep=";",na.strings="?",comment.char = "",header=TRUE,
                   colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
dt <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
x <- as.POSIXct(paste(dt$Date, dt$Time), format="%d/%m/%Y %H:%M:%S")
png(file="plot2.png", width=480, height=480, units = "px")
par(bg="transparent")
plot(x,dt$Global_active_power, xlab="", ylab="Global Active Power (kilowatts)",type="l")
dev.off() 
