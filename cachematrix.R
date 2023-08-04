## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
  
        # Define functions
        setMatrix <- function(y) {
        x <<- y
        m <<- NULL
        }
  
        getMatrix <- function() x
  
        setInverseMatrix <- function(solve) m <<- solve
        
        getInverseMatrix <- function() m
  
        # Return list
          list(setMatrix = setMatrix, getMatrix = getMatrix,
               setInverseMatrix = setInverseMatrix,
               getInverseMatrix = getInverseMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        m <- x$getInverseMatrix()
        if(!is.null(m)) {
            message("getting cached data")
            return(m)
        }
        data <- x$getMatrix()
        m <- solve(data, ...)
        x$setInverseMatrix(m)
        m
}
