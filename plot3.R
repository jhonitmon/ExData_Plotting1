library("dplyr")
library("lubridate")
hpc_df <- read.csv("tidydata.csv")
hpc_df$Date <- ymd(hpc_df$Date)
hpc_df$Time <- ymd_hms(hpc_df$Time)
date(hpc_df$Time) <- hpc_df$Date

png("plot3.png")
plot(hpc_df$Time,hpc_df$Sub_metering_1,type = "l",xlab = "", ylab = "Energy sub metering")
lines(hpc_df$Time,hpc_df$Sub_metering_2,col = "red")
lines(hpc_df$Time,hpc_df$Sub_metering_3,col = "blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red","blue"), lty = 1)
dev.off()