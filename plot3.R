##### Plot 3
#install.packages('lubridate')
library(lubridate)
df <- read.table('household_power_consumption.txt', sep=';', nrows=100000, header=TRUE, na.strings='?', colClasses=c(rep('character',2), rep('numeric', 7)))
df[,1] <- dmy(df[,1])
df <- subset(df, Date >= dmy('1/2/2007') & Date <= dmy('2/2/2007'))

plot(df$Sub_metering_1, type='l', xlab='', ylab='Energy sub metering', xaxt='n')
points(df$Sub_metering_2, type='l', col='red')
points(df$Sub_metering_3, type='l', col='blue')
axis(1, labels=c('Thu', 'Fri', 'Sat'), at=c(seq_along(df$Date)[!duplicated(df$Date)],length(df$Date)))
legend('topright', col=c('black','red','blue'), lty=1, legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'))

dev.copy(png, 'plot3.png', width=480, height=480)
dev.off()