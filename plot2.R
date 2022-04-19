library("dplyr")
library("lubridate")
hpc_df <- read.csv("tidydata.csv")
hpc_df$Date <- ymd(hpc_df$Date)
hpc_df$Time <- ymd_hms(hpc_df$Time)
date(hpc_df$Time) <- hpc_df$Date


png("plot2.png")
plot(hpc_df$Time,hpc_df$Global_active_power,type = "l",xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()