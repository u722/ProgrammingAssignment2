##function 1-  This function creates a special "matrix" object that can cache its inverse. it returnes the list with elements of list as functions used for retrieving the matrix, setting its inverse to variable i, and getting the value of the inverse of matrix x (i) when desired. 
makecachematrix<-function(x=matrix())
{i<-NULL
 get<-function() 
x
seti<-function(e)
i<<-e


geti<-function() 
i

list(get=get, seti=seti, geti=geti)

}
 

M<- makecachematrix(matrix(1:4, 2, 2))##call to function 1, the list returned by function 1 is stored in variable m and is passed to function 2 as argument.
                                        the matrix for which we want to calculate inverse can be passed as argument to function 1





##function 2- This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. If the inverse has already been calculated (and the matrix has not changed), then the cachesolve should retrieve the inverse from the cache.
cachesolve<-function(M)
{ 
 i<-M$geti()
if(!is.null(i))
{message("getting cached data")
return(i)
}
data<-M$get()
i<-solve(data)
M$seti(i)
i
}