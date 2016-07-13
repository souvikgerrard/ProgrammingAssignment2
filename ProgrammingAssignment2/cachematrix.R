## The function stores the inverse of a matrix in cache


makeCacheMatrix <- function(x = matrix()) {
znv<-NULL
set<- function(z){
x<<-z
znv<<-NULL
}

get<-function()x

set_inverse<-function(inverse)znv<<-inverse

get_inverse<-function()znv

list(set=set,get=get,set_inverse=set_inverse,get_inverse=get_inverse)

}







## The function checks if the inverse is stored in cache, if not it computes it

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

znv<-x$get_inverse()
if(!is.null(znv)){

message("cached data")

return(znv)


}

m<-x$get()
znv<-solve(m,...)
x$set_inverse(znv)

znv

}



