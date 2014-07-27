## This function creates a "matrix" to cache it's inverse for future use.

## This "makecacheMatrix" function is made of the following functions:
## Set the value of the matrix
## Get the value of the matrix
## Set the inverse of the matrix
## Get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  
  mat <-NULL
  
  setmatrix <-function(y){
         x <<-y
        mat <<-NULL
      }
  getmatrix <-function()x
  setinver <-function(solve) mat <<- solve
  getinver <-function() mat
  
  list ( setmatrix=setmatrix, getmatrix=getmatrix, setinver=setinver, getinver=getinver)
  
}


## This function takes a designated matrix and returns the inverse.  Answer will be
## provided via cached data--message will be provided--or calculated and stored.

cacheSolve <- function(x, ...) {
  mat <- x$getinver()
    
  if(!is.null(mat)){
        
        message("getting cached matrix")
        return(mat)
    }
  
  newmat <- x$getmatrix()
  mat <- solve(newmat, ...)
  x$setinver(mat)
  
  mat
}
