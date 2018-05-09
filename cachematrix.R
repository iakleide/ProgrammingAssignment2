## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## makeCacheMatrix returns a list with the four following functions as objects of the list 

## x is an invertible matrix set by the user
##    set function set the matrix
##    get function gets the matrix
##    setInverse function sets the inverse
##    getInverse function gets the inverse

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
        x <<- y 
        inv <<- NULL
        
        
    }

    get <- function() {
        x 
    }
    
    setInverse <- function(inverse){
        inv <<- inverse
    }
       
    
    getInverse <- function() {
        inv
    }
    
    list(set = set , get = get, setInverse = setInverse , getInverse = getInverse)
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
        
    if(!is.null(inv)) {
        message("getting cached data")
        return(inv)
    }
    
    matrix.data <- x$get()
    inv <- solve(matrix.data, ...)
    x$setInverse(inv)
    inv
    
}
