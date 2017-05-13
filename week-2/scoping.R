y <- 10

func <- function(){
  func2(y)
}

func2 <- function(y){
  y
}

func()

func2(11)


