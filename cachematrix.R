## Put comments here that give an overall description of what your
## functions do

## This function sets the value of a matrix, gets the value of a matrix, sets an inverse of the matrix and gets the value of this inverse.

makeCacheMatrix<-function(x=matrix()){
  m<-NULL
  set<-function(y){
    x<<-y
    inv_rse<<-NULL
  }
  get<-function() x
  setinverse<-function(inverse) inv_rse<<-inverse
  getinverse<-function() inv_rse
  list(set=set,get=get,setinverse=setinverse,getinverse=getinverse)
}


## This function assumes the matrix inputed are invertible and gives the matrix inverse.

cacheSolve<-function(x){
  if(!is.null(inv_rse)){
    message('getting cached data')
    return(inv_rse)
  }
  data<-x$get()
  inv_rse<-solve(data,...)
  x$setinverse(inv_rse)
  inv_rse
}
