complete <- function(directory, indecies=1:332){
  files <- dir(directory)
  response_frame <- data.frame(id=integer(), nobs=integer())
  for(i in indecies){
    file_data = read.csv(paste(c(directory, files[i]),collapse="/"))
    nobs <- nrow(file_data[complete.cases(file_data),])
    response_frame <- rbind(response_frame, c(i, nobs))
  }
  colnames(response_frame) <- c("id", "nobs")
  response_frame
}
