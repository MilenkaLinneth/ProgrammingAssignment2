## In this case I will write two function, one create an especial object
## matrix list with 4 funtions set, get, setinverse and getinverse.

## this function is really interesting and cache inverse of matrix 
## and isn't necesary recalculate de inverse

makeCacheMatrix <- function(x = matrix()) {
	mile <- NULL
	set <- function(y) {
		x <<- y
		mile <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) mile <<- inverse
	getinverse <- function() mile
	list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}

## This second function calculte de inverse of matrix and call cache function 
## to print the inverse if it wasn't calculated or if not calculate inverse

cacheSolve <- function(x, ...) {
	mile <- x$getinverse()
	if (!is.null(mile)) {
			message("getting cached data")
			return(mile)
			}
        ## Return a matrix that is the inverse of 'x'
		data <- x$get()
		mile <- solve(data, ...)
		x$setinverse(mile)
		mile
} 