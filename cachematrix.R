

## Rao's Programming Assignment for Cache and Inverse Matirx.

## Caching Matrix

makeCacheMatrix <- function(x = matrix()) 

{

			i <- NULL   ## initiliazie matrix 
			set <- function(y) 
			{
				x <<- y		 ## creating global variable
				i <<- NULL
			}
			get <- function() x   ##getting the value of the matix
			
			## setting inverse of the matrix
			setinv <- function(solve) i <<- solve
			
			 ## getting the inverse of the matrix
			getinv <- function() i

			list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Gettting Matrix from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
