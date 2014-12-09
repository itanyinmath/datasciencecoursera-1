## The next functions are used to cached the inverse result of a matrix, such that it will only need to be calculated a single time.

## Creates a special matrix, which contain a list to set/get functions for the matrix itself and its inverse
makeCacheMatrix <- function(x = matrix()) {
        ## 
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Calculates the inverse of the special matrix created by makeCacheMatrix. It will calculate the inverse
## only during the first time the function is called after special matrix creation and set function of the previous
## function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
