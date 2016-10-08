range_value <- function(x, y) {
    if (y==TRUE){
        x = na.omit(x)
    }
  max(x) - min(x)
}
