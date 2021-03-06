## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(Y){
        X <<- Y
        inverse <<- NULL
    }
    get <- function() X
    setinverse <- function(Inverse) inverse <<- Inverse
    getinverse <- function() inverse
    list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    inverse <- X$getinverse()
    if(!is.null(inverse)){
        message("matrix is in memory")
        return(inverse)
    }
    message("The inverse is not in memory so it will be computed")
    data <- X$get()
    inverse <- pseudoinverse(data, ...)
    X$setinverse(inverse)
    inverse
}
