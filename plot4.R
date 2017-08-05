##### Plot 4
#install.packages('lubridate')
library(lubridate)

## Read Data
df <- read.table('household_power_consumption.txt', sep=';', nrows=100000, header=TRUE, na.strings='?', colClasses=c(rep('character',2), rep('numeric', 7)))

## Subset only the data from 2007-2-1 and 2007-2-2
df[,1] <- dmy(df[,1])
df <- subset(df, Date >= dmy('1/2/2007') & Date <= dmy('2/2/2007'))

## Set up the plotting device appropriately (2 rows and 2 columns of plots) then create the plots
par('mfrow'=c(2,2))

plot(df$Global_active_power, type='l', xaxt='n', ylab='Global Active Power', xlab='')
axis(1, labels=c('Thu', 'Fri', 'Sat'), at=c(seq_along(df$Date)[!duplicated(df$Date)],length(df$Date)))

plot(df$Voltage, type='l', xlab='datetime', ylab='Voltage', xaxt='n')
axis(1, labels=c('Thu', 'Fri', 'Sat'), at=c(seq_along(df$Date)[!duplicated(df$Date)],length(df$Date)))

plot(df$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering', xaxt='n')
points(df$Sub_metering_2, type='l', col='red')
points(df$Sub_metering_3, type='l', col='blue')
axis(1, labels=c('Thu', 'Fri', 'Sat'), at=c(seq_along(df$Date)[!duplicated(df$Date)],length(df$Date)))
legend('topright', col=c('black','red','blue'), lty=1, legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))

plot(df$Global_reactive_power, type='l', xaxt='n', ylab='Global_reactive_power', xlab='datetime')
axis(1, labels=c('Thu', 'Fri', 'Sat'), at=c(seq_along(df$Date)[!duplicated(df$Date)],length(df$Date)))

## Save the plot to a png file in the working directlry
dev.copy(png, 'plot4.png', width=480, height=480)
dev.off()