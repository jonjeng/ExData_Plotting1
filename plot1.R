##### Plot 1
#install.packages('lubridate')
library(lubridate)

## Read Data
df <- read.table('household_power_consumption.txt', sep=';', nrows=100000, header=TRUE, na.strings='?', colClasses=c(rep('character',2), rep('numeric', 7)))

## Subset only the data from 2007-2-1 and 2007-2-2
df[,1] <- dmy(df[,1])
df <- subset(df, Date >= dmy('1/2/2007') & Date <= dmy('2/2/2007'))

## Plot Global Active Power
hist(df$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

## Save the plot to a png file in the working directlry
dev.copy(png, 'plot1.png', width=480, height=480)
dev.off()