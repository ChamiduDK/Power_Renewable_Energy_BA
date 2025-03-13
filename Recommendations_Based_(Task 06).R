attach(EED)

# Normality test for ratio variables
install.packages("nortest")
library(nortest)

# Normality test for Relative_Compactness

# Anderson Darling Test 
ad.test(Relative_Compactness)

# Lilliefor  Test
lillie.test(Relative_Compactness)

# Shapiro-wilk  Test
shapiro.test(Relative_Compactness)

summary(Relative_Compactness)


# Normality test for Glazing_Area_Distribution

# Anderson Darling Test 
ad.test(Glazing_Area_Distribution)

# Lilliefor  Test
lillie.test(Glazing_Area_Distribution)

# Shapiro-wilk  Test
shapiro.test(Glazing_Area_Distribution)

summary(Glazing_Area_Distribution)

# Normality test for Surface Area Distribution

# Anderson Darling Test 
ad.test(Surface_Area)

# Lilliefor  Test
lillie.test(Surface_Area)

# Shapiro-wilk  Test
shapiro.test(Surface_Area)

summary(Surface_Area)


# Normality test for Cooling Load Distribution

# Anderson Darling Test 
ad.test(Cooling_Load)

# Lilliefor  Test
lillie.test(Cooling_Load)

# Shapiro-wilk  Test
shapiro.test(Cooling_Load)

summary(Cooling_Load)


# Multiple linear regression

model <- lm(Cooling_Load ~ Relative_Compactness + Surface_Area + Glazing_Area_Distribution, data = EED)
summary(model)


cor(data[, c("Relative_Compactness", "Surface_Area", "Glazing_Area_Distribution")])


362.16+(-185.15)*(0.98 )+(-0.29)*(514.5 )+(0.3)*(0)


install.packages('carData')
install.packages('Matrix')
install.packages('splines')
install.packages('car')
install.packages('RcmdrMisc')
# Using R Commander
install.packages('Rcmdr')
library('Rcmdr')

library('splines')
library('RcmdrMisc')
library('car')
library('Matrix')
library('carData')
library('sandwich')
library('effects')

