## Function 'makeCacheMatrix' accepts as input a square matrix and does the following:
##
## 1.  set the value of the matrix
## 2.  get the value of the matrix
## 3.  set the value of the inverse matrix to the cache 
## 4.  get the value of the inverse matrix from the cache
##
## Note: In testing this function the argument matrix must be a square matrix. 
## A square matrix has the same number of rows and columns. 

makeCacheMatrix <- function(x = matrix()) {
  
         if(nrow(x) != ncol(x)){
            print("input matrix argument must be a square matrix")
           # return()
         } 
  
         inv_m <- NULL # initialize object for inverse matrix 
         
         ## the 'set'  function can assign 'y' to a new matrix
         ## Example mymatrix$set(new_matrix)
         set <- function(y) {
         
            if(nrow(y) != ncol(y)){
                print("input matrix argument must be a square matrix")
             #return()
           } 
              x <<- y # Assign the input argument to the x object
              inv_m <<- NULL # initialize object for inverse matrix
         }
         
         
        # create 'get' function to return the value of the matrix.
        get <- function() x 
        
        # create a 'set' function to assign the value of the inverse matrix to an object
        # the inverse matrix will be created by the 'cacheSolve' function.
        setinv <- function(inv) inv_m <<- inv
        
        # create a 'get' function to return the value of the inverse matrix that was 
        # previously assigned.
        getinv <- function() inv_m
        
        # Assign each function to an element within a list. Each element in the list is 
        # 'named' and can be referenced by name.  Since the list is the last line in the
        # function, it will be returned by any calling function. 
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}
