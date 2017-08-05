## Introduction
___

The `.R` scripts in this repo create the plots in the correspondingly named `.png` files. For instance, the code in `plot1.R` creates the plot in `plot1.png`.

The data is the <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> dataset available from the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine Learning Repository</a>. In particular, it is a set of measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost 4 years.

The dataset contains the nine following variables:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Code files
___

The first five lines of each `.R` file contains code to read the dataset, assuming that it is in the current working directory and is named `household_power_consumption.txt`. The code also subsets the data appropriately. The same code is in each `.R` file so that each can be run independently.
