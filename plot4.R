#plot4.R
#--------------------------
#Charles BUFFET alias Makina
#
#plot datas

source("GetData.R")
attach(Pwr)
png( "plot4.png" )
par(mfrow=c(2,2))
plot(DateTime, Global_active_power, type="l", xlab = "", ylab = "Global Active Power")
plot(DateTime, Voltage, type = "l", xlab = "datetime")
plot(DateTime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
legend("topright",
       lty = c(1, 1, 1),
       col = c("black", "blue", "red"),
       legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3") 
       )
lines(DateTime, Sub_metering_2, type = "l", col = "red")
lines(DateTime, Sub_metering_3, type = "l", col = "blue")
plot(DateTime, Global_reactive_power, type = "l", xlab = "datetime")
dev.off()
detach(Pwr)
