pollutantmean <- function(directory, pollutant, indecies=1:332){
  files <- dir(directory)
  pollutants <- c() 
  for(f in files[indecies]){
    file_values <- read.csv(paste(c(directory, f), collapse="/"))[pollutant]
    file_pollutants <- file_values[pollutant]
    non_na_values <- file_pollutants[!is.na(file_pollutants)]
    pollutants <- c(non_na_values, pollutants)
  }
  mean(pollutants)
}
