source("load_hpc.R")

hpc <- load.data()

png("plot3.png")

plot(hpc$TimeConv, hpc$Sub_metering_1,
     type="l", xlab="", ylab="Energy sub metering")
lines(hpc$TimeConv, hpc$Sub_metering_2, col="red")
lines(hpc$TimeConv, hpc$Sub_metering_3, col="blue")
legend("topright", lty=1, col=c("black", "blue", "red"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
