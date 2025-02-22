## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInv <- function(solveMatrix) inv <<- solveMatrix
  getInv <- function() inv
  list(set=set, get=get, setInv = setInv, getInv=getInv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInv()
        if(!is.null(inv)){
          message("cached data")
          return(inv)
        }
        data <- x$getInv()
        inv <- solve(data)
        x$setInv(inv)
        inv
      }
