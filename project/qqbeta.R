qqbeta<- function(da){
  # The data matrix is "da".
  if(!is.matrix(da))da=as.matrix(da)
  nr = dim(da)[1]; nc = dim(da)[2]
  dev=scale(da,center=T,scale=F)
  dev=as.matrix(dev)      
  s=cov(da)            
  si=solve(s)
  d2=sort(diag(dev%*%si%*%t(dev))) 
  d2=nr*d2/((nr-1)^2)
  a <- nc/2; b <- (nr-nc-1)/2
  alpha <- (nc-2)/(2*nc)
  beta <- (nr-nc-3)/(2*(nr-nc-1))
  mn = min(a,b,alpha,beta)
  if(mn > 0){
    prob=(c(1:nr)-alpha)/(nr-alpha-beta+1)
    q1=qbeta(prob,a,b)   
    plot(q1,d2,xlab='Quantile of beta-dist',ylab=expression(d^2), lwd=2, cex.lab=1.2 )
    
    fit = lsfit(q1,d2)
    fitted = d2-fit$residuals
    lines(q1,fitted,  col="blue", lwd=2)
    rq=cor(q1,d2)
    cat("correlation coefficient:",rq,"\n")
  }
  else{
    cat("Insufficient sample size")
  }
}