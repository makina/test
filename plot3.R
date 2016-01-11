#plot3.R
#--------------------------
#Charles BUFFET alias Makina
#
#plot datas

source("GetData.R")

png( "plot3.png" )
plot(Pwr$DateTime, Pwr$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(Pwr$DateTime,Pwr$Sub_metering_2, type = "l", col = "red")
lines(Pwr$DateTime,Pwr$Sub_metering_3, type = "l", col = "blue")
legend("topright",
       lty = c(1, 1, 1),
       col = c("black", "blue", "red"),
       legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3") 
       )
dev.off()

