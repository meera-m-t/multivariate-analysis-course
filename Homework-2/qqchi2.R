qqchi2 <- function(da){
  if(!is.matrix(da))da=as.matrix(da)
  nr = dim(da)[1]
  nc = dim(da)[2]
  dev=scale(da,center=T,scale=F)
  dev=as.matrix(dev)
  s=cov(da)
  si=solve(s)
  d2=sort(diag(dev%*%si%*%t(dev)))
  prob=(c(1:nr)-0.5)/nr
  q1=qchisq(prob,nc)
  plot(q1,d2,xlab='Quantile of chi-square',ylab= expression(d^2), lwd=2, cex.lab=1.2 )
  fit = lsfit(q1,d2)
  fitted = d2-fit$residuals
  lines(q1,fitted, col="blue", lwd=2)
  rq=cor(q1,d2)
  cat("correlation coefficient:",rq,"\n")
}