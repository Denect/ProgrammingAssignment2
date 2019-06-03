## Put comments here that give an overall description of what your functions do

# Matrix inversion is a com[plex computation even though it is benefiacial 


## Write a short comment describing this function

# makeCacheMatrix creates a list containing a function which
# sets and gets the the value of the matrix and sets and gets the value of inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}

## Write a short comment describing this function

# The function below returns the inverse of the matrix by checking if the inverse of the matrix exist  
# It skips if inverse matrix exist otherwise computes it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
  
  }
