## The following code contains two functions 
## makeCacheMatrix and cacheSolve, they are used
## to create a special matrix and cache the  inverse
## of that matrix

## There are four functions contained in the makeCacheMatrix
## First is the set function used the set the value of the  matrix
## Next is the get function used to return the value of a matrix
## Third is the setinverse function used to set the value of the matrix inverse
## Last is the getinverse function used to return the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<-y
		i <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) i <<- inverse
	getinverse - function() i
	list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## This function uses the functions created in the previous makeCacheMatrix function
## to manipulate the cached matrix.  I uses the solve function to calculate  the inverse
## of the matrix and the setinverse function to set the cached matrix invers.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i <- x$getinverse()
	if(!is.null(i)){
		message("gettting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	x$setinverse(i)
	i
}
