## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrix <- x
  inverseMatrix <- NULL
  
  set <- function(y){
    
    matrix <<- y
    inverseMatrix <<- NULL
    
  }
  
  get <- function() matrix
  
  getInverse <- function() inverseMatrix
  setInverse <- function(invMatrix) inverseMatrix <<- invMatrix
  
  list( set = set , 
        get = get , 
        getInverse = getInverse, 
        setInverse = setInverse )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  tmpInvMatrix <- x$getInverse()
  
  if(!is.null(tmpInvMatrix)){
    message("getting from cache")
    return(tmpInvMatrix)
  }
  
  tmpInvMatrix <- solve( x$get() , ... )
  x$setInverse( tmpInvMatrix )
  tmpInvMatrix
}