source("load_hpc.R")

hpc <- load.data()

png("plot2.png")

plot(hpc$TimeConv, hpc$Global_active_power, type="l",
     xlab="", ylab="Global Active Power (kilowatts)")

dev.off()
