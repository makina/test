#GetData.R
#--------------------------
#Charles BUFFET alias Makina
#
#download file from UCI Machine Learning
#read/save datas


url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
dest <- "pwr.zip"
filename <- "household_power_consumption.txt"
filedatas <- "pwr.RData"

if (!file.exists(dest)){
  download.file(url,dest)
}

if (!file.exists(filename)){
  unzip (dest)
}

if (!file.exists(filedatas)){
  Pwr <- read.table( filename, header = TRUE, sep = ";",fill=FALSE, na.strings = "?" ) 
  Pwr$DateTime <- strptime(paste(Pwr$Date,Pwr$Time,sep=" "), "%d/%m/%Y %H:%M:%S")
  Pwr$Date <- as.Date(Pwr$Date,"%d/%m/%Y")
  Pwr <- subset(Pwr , Date == as.Date("2007-02-01","%Y-%m-%d") | Date == as.Date("2007-02-02","%Y-%m-%d"))
  saveRDS( Pwr, file = filedatas )
} else Pwr<-readRDS(file=filedatas)