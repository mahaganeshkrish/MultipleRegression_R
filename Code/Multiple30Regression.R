l=lm(Y~X1+X2+X3+X4+X5+X6+X7+X8+X9+X10+X11+X12+X13+X14+X15+X16+X17+X18+X19+X20+X21+X22+X23+X24+X25+X26+X27+X28+X29+X30,data=Multiple30Regression) 
summary(l)
newdata=data.frame(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30) 
predict(l,newdata)


RSS <- c(crossprod(l$residuals))
MSE <- RSS / length(l$residuals)
RMSE <- sqrt(MSE)
RMSE