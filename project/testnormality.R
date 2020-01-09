testnormality <- function(X, numproj = 100000)
{
  p <- ncol(X)
  n <- nrow(X)
  x <- matrix(rnorm(numproj * p), nrow = p)
  y <- matrix(sqrt(apply(x^2, 2, sum)), nrow = p, ncol = numproj, by = T)
  z <- x / y
  tempdat <- as.matrix(X) %*% z
  pvals <- as.numeric(matrix(unlist(apply(tempdat, 2, shapiro.test)),
                             ncol=4, by = T)[,2])
  return(min(sort(pvals) * numproj / (1:numproj)))
}