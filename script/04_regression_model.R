#Example with database 'cars'

#Linear Regression Single

#Read database
data(cars)
typeof(cars)
names(cars)
dim(cars)
head(cars, 10)
plot(cars)
summary(cars)

#Make a model
model <- lm(speed ~ dist, data = cars)
model
model$coefficients
model$coefficients[1] #intersection in y axys
model$coefficients[2] #inclination
summary(model)
plot(speed ~ dist, data = cars)
abline(model)

#predict for dist = 25
model$coefficients[1] + model$coefficients[2] * 25
#or
predict(model, data.frame(dist=25))

#validation model
##residuals
model$residuals
##fitted values
model$fitted.values
plot(model$fitted.values) #fitted values
abline(model)
##validation graphs
par(mfrow = c(2, 2))
plot(model)
par(mfrow = c(1, 1))

#Multiple Linear Regression
data("mtcars")
dim(mtcars)
cor(mtcars[1:4])

#make model
model2 <- lm(mpg ~ disp, data = mtcars)
model2
summary(model2)$r.squared
summary(model2)$adj.r.squared
plot(mpg ~disp, data=mtcars)
abline(model2)
predict(model2, data.frame(disp=200))
plot(model3)

model3 <- lm(mpg ~ disp + hp + cyl, data=mtcars)
model3
summary(model3)$r.squared
summary(model3)$adj.r.squared
predict(model3, data.frame(disp=200, hp=100, cyl=4))
plot(model3)
