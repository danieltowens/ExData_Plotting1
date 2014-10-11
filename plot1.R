source("load_hpc.R")

hpc <- load.data()

png("plot1.png")

hist(hpc$Global_active_power, col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")

dev.off()
