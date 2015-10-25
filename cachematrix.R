## Put comments here that give an overall description of what your
## functions do

## This function isn meant to cache the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
         x <<- y
         inv <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## This function solves the inverse of matrix

cacheInverse <- function(x, ...) {
     m <- x$getInverse()
     if(!is.null(inv)) {
       message("getting cached data")
       return(inv)
     }
     data <- x$get()
     inv <- solve(mat, ...)
     x$setInverse(inv)
     inv
}
