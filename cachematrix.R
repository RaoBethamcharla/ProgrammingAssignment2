

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
		
		
	  i<- x$getinv()
	
	  ## check the matrix is in cache 
	  ## if its in cache return the cached matrix and exit
	  
	  if(!is.null(i)) 
	  {
		message("getting cached data")
		return(i)
	  }
	  ## if matix is not chached 
	  ## peform the necesary steps
	  data <- x$get()
	  i<- solve(data, ...)
	  x$setinv(i)
	  
  
}
