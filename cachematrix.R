## 
## This function sets the value of the matrix, gets the value of the matrix, gets the inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
}


## gets the value of matrix
get <- function() x
## set the matrix inverse
setinverse <- function(solve) m <<- solve
getinverse <- function() m
list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)
}
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
m <- x$getinverse()
if(!is.null(m)) {
        message("cache data")
        return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinverse(m)
m
}