#Example with database 'cars'

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

#predict for dist = 25
model$coefficients[1] + model$coefficients[2] * 25
#or
predict(model, data.frame(dist=25))

#validation model
##residuals
model$residuals
