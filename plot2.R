##### Plot 2
#install.packages('lubridate')
library(lubridate)
df <- read.table('household_power_consumption.txt', sep=';', nrows=100000, header=TRUE, na.strings='?', colClasses=c(rep('character',2), rep('numeric', 7)))
df[,1] <- dmy(df[,1])
df <- subset(df, Date >= dmy('1/2/2007') & Date <= dmy('2/2/2007'))

plot(df$Global_active_power, type='l', xaxt='n', ylab='Global Active Power (kilowatts)', xlab='')
axis(1, labels=c('Thu', 'Fri', 'Sat'), at=c(seq_along(df$Date)[!duplicated(df$Date)],length(df$Date)))

dev.copy(png, 'plot2.png', width=480, height=480)
dev.off()