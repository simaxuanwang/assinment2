## A pair of funtions that cache the inverse of a matrix.

## makeCacheMatrix: this function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

    ## Initialize 
    
    m <- NULL
    
    ## set the matrix

    set <- function (matrix) {

        x <<- matrix
        m <<- NULL

    }

    ## get the matrix

    get <- function() {
 
        x

    }

    ## set the inverse of the matrix

    setinverse <- function(inverse) {

        m <<- inverse

    }


    ## get the inverse of the matrix
   
    getinverse <- function() {

        m

    }

    
    ## return the list 
 
    list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)


}


## cacheSolve: this function computes the inverse of the special "matrix" returned by makeCacheMatrix above


cacheSolve <- function(x, ...) {
    
    ## Return a matrix that is the inverse of 'x'
    
    m <- x$getinverse()

    if( !is.null(m)) {
        message("getting cached data")
        return(m)
    }
 
    ## get the matrix

    data <- x$get()

    ## calculate the inverse
    
    m <- solve(data)

    ## set the inverse

    x$setinverse(m)

    ## return the inversed matrix

    m

}
