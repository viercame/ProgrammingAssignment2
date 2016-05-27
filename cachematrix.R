## Matrix inversion


## makeCacheMatrix creates a list containing a function to

## - Set the value of a mtrix
## - get the value of the matrix
## - set the inverse of the matrox (definainversa)
## - get the inverse of the matrix (obtenga inversa)

makeCacheMatrix <- function(x = matrix()) {
  
  i <- NULL
  
  set <- function(w){
    x <<- w
    i <<- NULL
    
  }
  get <- function() x
  
  definainversa <- function(solve) i <<- solve
  obtengainversa <- function() i
  
  list (set=set, get=get, definainversa=definainversa, obtengainversa=obtengainversa)
  
}


##This function returns the inverse of a matrix.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  inversa <- x$obtengainversa()
  
  if (!is.null(inversa)){
    message ("Obteniendo la data de caché")
    return(inversa)
    
  }
  
  data <- x$get()
  inversa <- solve (data)
  x$definainversa(inversa)
  inversa
  
  
  
}
