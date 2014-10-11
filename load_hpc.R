load.data <- function() {

hpc <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?")
hpc$DateConv <- as.Date(hpc$Date, "%d/%m/%Y")

hpcReduced <- hpc[hpc$DateConv >= "2007-02-01" & hpc$DateConv <= "2007-02-02",]

hpcReduced$TimeConv <- strptime(paste(hpcReduced$Date,hpcReduced$Time), format="%d/%m/%Y %H:%M:%S")

hpcReduced
}
