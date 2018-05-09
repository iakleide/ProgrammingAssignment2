

#The code below creates two different functions

## 1.makeCacheFunction : This function creates a special "matrix" object (list) that can cache its inverse.
## 2.cacheSolve : This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.


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



##cacheSolve is a function that return the inverse of the matrix x returned by the function makeCacheMatrix above. 

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
