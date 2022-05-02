## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## 1.  get the value of the matrix
## 3.  set the value of the inverse
## 4.  get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
 # set <- function(y) {
  #  x <<- y
  #  m <<- NULL
 # }
  get <- function() x
  setinv <- function(inverse) m <<- inverse
  getinv <- function() m
  list(get = get,
     setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinv()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinv(m)
  m
}


my_data <- matrix(1:9, 3, 3)
my_func<- makeCacheMatrix(my_data) 
my_func$get()
my_func$getinv()
