##### Plot 1
#install.packages('lubridate')
library(lubridate)
df <- read.table('household_power_consumption.txt', sep=';', nrows=100000, header=TRUE, na.strings='?', colClasses=c(rep('character',2), rep('numeric', 7)))
df[,1] <- dmy(df[,1])
df <- subset(df, Date >= dmy('1/2/2007') & Date <= dmy('2/2/2007'))

hist(df$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.copy(png, 'plot1.png', width=480, height=480)
dev.off()