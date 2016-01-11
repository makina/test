#plot2.R
#--------------------------
#Charles BUFFET alias Makina
#
#plot datas

source("GetData.R")

png( "plot2.png" )
with(Pwr, plot(DateTime , Global_active_power, type = "l",xlab="",main="",ylab="Global Active Power (kilowatts)"))
dev.off()

