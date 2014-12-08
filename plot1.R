data <- read.table("household_power_consumption.txt",sep=";",na.strings="?",comment.char = "",header=TRUE,
                   colClasses=c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
dt <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
png(file="plot1.png", width=480, height=480, units = "px")
par(bg="transparent")
par(ps=12)
hist(dt$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off() 
