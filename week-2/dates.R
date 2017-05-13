date <- as.Date("2017-01-01")
date
unclass(date)

time <- Sys.time() 
time

p <- as.POSIXlt(time)
#names(unclass(p))
p$sec
p$wday

p <- as.POSIXct(time)
#names(unclass(p))

strptime(unclass(p), "%B")
