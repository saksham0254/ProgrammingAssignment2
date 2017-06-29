## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This function creates an object fro matrix which caches the inverse of the matrix x. We have methods for setting matrix, getting matrix, setting inverse and getting inverse. This is what we are going to use when looking for an inverse of a matrix.

makeCacheMatrix <- function(x = matrix()) {

inv <- NULL

	get <- function()
	{
		x
	}
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	getinv <- function() 
	{
		inv
	}
	setinv <- function(inverse)
	{
		inv <<- inverse
	}

	list(set = set,get = get, setinv = setinv, getinv = getinv)

}



## Write a short comment describing this function
# This function will look for the inverse of a matrix and if that is not available it will cache it. else it will return the cached inverse.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inverse <- x$getinv()
	
	# If an inverse exists
	if(!is.null(inverse))
	{
		message("Cached inverse")
		#Return the inverse
		inverse
	}

	#Gets the matrix
	matrix <- x$get()

	#Calculate the inverse
	inverse <- solve(matrix, ...)


	#Set the inverse	
	x$setinv(inverse)

	#Return the inverse
	inverse



}
