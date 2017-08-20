## cachesolve will do the following:
## 1. retrive cache inverse matrix if exist 
## 2. compute the inverse of a matrix using the solve function - if the cache does not exist.
## This function also assumes that the matrix is invertible


cacheSolve <- function(x, ...) {
 
       # Attempt to get the cache inverse of the matrix defined in the function argument 
       inv_cache_m <- x$getinv() 
   
      # check if the inverse matrix exist: If inverse exist return inverse 
      if(!is.null(inv_cache_m)){
          message("getting cached data")
          return(inv_cache_m)
      }
       
       
      ## if inverse does not exist - get the matrix
      m_data <- x$get()
      
      # compute the inverse using solve
      inv_cache_m <- solve(m_data, ...)
      
      # assign the inverse to the cache variable
      x$setinv(inv_cache_m)
      
      # return the inverse
      inv_cache_m
}
