##### Plot 2
#install.packages('lubridate')
library(lubridate)

## Read Data
df <- read.table('household_power_consumption.txt', sep=';', nrows=100000, header=TRUE, na.strings='?', colClasses=c(rep('character',2), rep('numeric', 7)))

## Subset only the data from 2007-2-1 and 2007-2-2
df[,1] <- dmy(df[,1])
df <- subset(df, Date >= dmy('1/2/2007') & Date <= dmy('2/2/2007'))

## Plot Global Active Power
plot(df$Global_active_power, type='l', xaxt='n', ylab='Global Active Power (kilowatts)', xlab='')
axis(1, labels=c('Thu', 'Fri', 'Sat'), at=c(seq_along(df$Date)[!duplicated(df$Date)],length(df$Date)))

## Save the plot to a png file in the working directlry
dev.copy(png, 'plot2.png', width=480, height=480)
dev.off()