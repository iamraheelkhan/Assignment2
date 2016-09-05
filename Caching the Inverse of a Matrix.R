Skip to content
This repository
Search
Pull requests
Issues
Gist
 @raheelkhan7
 Watch 0
  Star 0
  Fork 93,947 raheelkhan7/ProgrammingAssignment2
forked from rdpeng/ProgrammingAssignment2
 Code  Pull requests 0  Wiki  Pulse  Graphs  Settings
Branch: master Find file Copy pathProgrammingAssignment2/cachematrix.R
e87a984  an hour ago
@raheelkhan7 raheelkhan7 Caching the Inverse of a Matrix.R
2 contributors @rdpeng @raheelkhan7
RawBlameHistory     36 lines (30 sloc)  908 Bytes
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
Contact GitHub API Training Shop Blog About
© 2016 GitHub, Inc. Terms Privacy Security Status Help
