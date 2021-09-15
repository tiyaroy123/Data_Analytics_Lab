#a
df = mtcars
df[1:5,]

#b
pairs(~disp + wt + mpg + hp, data = mtcars)

#c
a <- mtcars[,c("mpg","wt")]
model <- lm(mpg~wt, data = a)
print(model)
