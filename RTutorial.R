require("datasets")
data("iris")
str(iris)

Y<- iris[,"Sepal.Width"] # select Target attribute
X<- iris[,"Sepal.Length"] # select Predictor attribute
head(X)

xycorr<- cor(Y,X, method="pearson") # find pearson correlation coefficient
xycorr # a value near 1 implies high correlation and that near 0 shows low correlation

plot(Y~X, col=X, xlab="Sepal Length",ylab="Sepal Width")

model1<- lm(Y~X)
model1 # provides regression line coefficients i.e. slope and y-intercept

plot(Y~X, col=X) # scatter plot between X and Y
abline(model1, col="blue", lwd=3) # add regression line to scatter plot to see relationship between X and Y

p1<- predict(model1,data.frame("X"=20))
p1