source("load_hpc.R")

hpc <- load.data()

png("plot4.png")

par(mfrow=c(2,2), mar=c(4, 4, 2, 2))

plot(hpc$TimeConv, hpc$Global_active_power, type="l",
     xlab="", ylab="Global Active Power (kilowatts)")

plot(hpc$TimeConv, hpc$Voltage, type="l",
     xlab="datetime", ylab="Voltage")

plot(hpc$TimeConv, hpc$Sub_metering_1,
     type="l", xlab="", ylab="Energy sub metering")
lines(hpc$TimeConv, hpc$Sub_metering_2, col="red")
lines(hpc$TimeConv, hpc$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black", "blue", "red"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

plot(hpc$TimeConv, hpc$Global_reactive_power, type="l",
     xlab="datetime", ylab="Global_reactive_Power")

dev.off()
