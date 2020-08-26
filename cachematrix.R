## Put comments here that give an overall description of what your
## functions do
##File
makeCacheMatrix <- function(x = matrix()) {

  ## Initialize the inverse property
  inver <- NULL
  
  ## Method to set the matrix
  set <- function( matrix ) {
    ma <<- matrix
    inver <<- NULL
  }
  
  get <- function() {
    ma
  }
  
  setinverse <- function(inverse) {
    inver <<- inverse
  }
  
 
  getinverse <- function() {

    inver
  }
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)       
        
       
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    

    ma <- x$getinverse()

    if( !is.null(ma) ) {
            message("getting cached data")
            return(ma)
    }

    ## Get the matrix from our object
    data <- x$get()


    ma <- solve(data) %*% data

    x$setinverse(m)


    ma
}
        
        
}
