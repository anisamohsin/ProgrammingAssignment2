## This function computes the inverse of the special "matrix" returned 
## by makeCacheMatrix above. If the inverse has already been calculated 
## (and the matrix has not changed), then the cachesolve should retrieve 
## the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inverseX <- x$getInverse()
        if(!is.null(inverseX)) {
                message("getting cached data")
                return(inverseX)
        }
        data <- x$get()
        inverseX <- solve(data, ...)
        x$setInverse(InverseX)
        InverseX
}
