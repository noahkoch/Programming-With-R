add2 <- function(x, y){
  x+y
}

add2(1,2)

above <- function(x, n=10){
  use <- x>n
  x[use]
}

above(8)

above(8, 12)

columnmean <- function(dataframe = matrix(1:20, 10, 2), na.rm = TRUE){
  nc <- ncol(dataframe)
  means <- numeric(nc)
  for(i in 1:nc){
    means[i] <- mean(dataframe[, i])
  }
  means
}

my_matrix <- matrix(1:40, 20, 2)

columnmean(my_matrix)
columnmean(na.rm = TRUE, dataframe=my_matrix)
columnmean()

lazy <- function(x, y){
  print(x)
  print(y)
}

lazy(1, 2)

lazy2 <- function(...){
  lazy(...)
}

lazy2(1,2)
