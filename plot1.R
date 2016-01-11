#plot1.R
#--------------------------
#Charles BUFFET alias Makina
#
#plot datas

source("GetData.R")

png( "plot1.png" )
hist( Pwr$Global_active_power ,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = "Frequency",col = "red")
dev.off()

