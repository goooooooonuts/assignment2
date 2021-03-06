#the first function makeCacheMatrix can create a special 'matrix' object that can cache its inverse.
# the first function set the value of a matrix,
# get the value of the matrix
# set the value of inverse
# get the value of inverse
    makeCacheMatrix <- function(m = matrix()){
    inve <- NULL
    set <- function(x){
           m <<- x
           inve <<- NULL
           }
           get <- function()m
           setinv <- function(inve) inve <<- inv
           getinv <- function() inve
           list(set = set, get = get, setinv = setinv, getinv = getinv)
  }
  
  
  #This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
  #If the inverse has already been #calculated (and the matrix has not changed), 
  #then cacheSolve should retrieve the inverse from the cache.
    cacheSolve <- function(m, ...){
    inve <- m$gentinv()
    if(!is.null(inve){
           message("getting cached data ...")
           return(inve)
    }
    data <- m$get()
    inve <- solve(data,...)
    m$setinv(inve)
    return(inve)
  }
