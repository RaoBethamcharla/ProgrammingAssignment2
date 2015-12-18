

## Rao's Programming Assignment for Cache and Inverse Matirx.

## Caching Matrix

makeCacheMatrix <- function(x = matrix()) 

{

			i <- NULL   ## Initilize matrix 
			set <- function(y) 
			{
				x <<- y
				i <<- NULL
			}
			get <- function() x

			setinv <- function(solve) i <<- solve

			getinv <- function() i

			list(set = set, get = get, setinv = setinv, getinv = getinv)

}


## Gettting Matrix from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
