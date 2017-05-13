f <- function(x){
  g <- function(y){
    y + z
  }
  x+g(x)
}

z <-10
f(3)
