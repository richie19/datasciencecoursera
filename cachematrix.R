## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Creating a list of the functions to set the matrix, get the matrix, set its inverse
## in the object inversematrix and get the inversematrix
makeCacheMatrix <- function(x = matrix()) {
inversematrix <- NULL
getmatrix <- function()x
setmatrix <- function(tempx)
{
  x <<- tempx
  inversematrix <<- NULL
}
setinversematrix <- function(y) inversematrix <- y

getinversematrix <- function() inversematrix



list(getmatrix = getmatrix,
     setmatrix = setmatrix,
     setinversematrix = setinversematrix,
     getinversematrix = getinversematrix)

}


## Write a short comment describing this function
## calling  the functions defined above to check if the inverse matrix is present
## if not then calculate inverse using solve() and then cache it
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  
  inversematrix <- x$getinversematrix()
  
  data <- x$getmatrix()
  
  if(!identical(inversematrix,data))
  {
    inversematrix <- solve(data,...)
    x$setinversematrix(inversematrix)
    
  }
  
  return(inversematrix) 
}
