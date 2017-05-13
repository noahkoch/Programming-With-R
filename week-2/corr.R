corr <- function(directory, threshold=0){
  files <- dir(directory)
  response_frame <- data.frame(id=integer(), nobs=integer())
  correlations <- vector() 
  complete_cases <- complete(directory)
  threshold_match = subset(complete_cases, complete_cases$nobs > threshold)
  for(id in threshold_match$id){
    file_data <- read.csv(paste(c(directory, files[id]),collapse="/"))
    clean_file_data <- file_data[complete.cases(file_data), ]
    correlations <- c(cor(clean_file_data$sulfate, clean_file_data$nitrate), correlations)
  }
  correlations
}
