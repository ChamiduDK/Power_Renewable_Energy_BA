library(ggplot2)
attach(EED)
summary(EED)

# Normality test for ratio variables
install.packages("nortest")
library(nortest)

# Normality test for Cooling Load Distribution

# Anderson Darling Test 
ad.test(Cooling_Load)

# Lilliefor  Test
lillie.test(Cooling_Load)

# Shapiro-wilk  Test
shapiro.test(Cooling_Load)

summary(Cooling_Load)


# Normality test for Surface Area Distribution

# Anderson Darling Test 
ad.test(Surface_Area)

# Lilliefor  Test
lillie.test(Surface_Area)

# Shapiro-wilk  Test
shapiro.test(Surface_Area)

summary(Surface_Area)


# Normality test for Wall Area Distribution

# Anderson Darling Test 
ad.test(Wall_Area)

# Lilliefor  Test
lillie.test(Wall_Area)

# Shapiro-wilk  Test
shapiro.test(Wall_Area)

summary(Wall_Area)


# Normality test for Roof Area Distribution

# Anderson Darling Test 
ad.test(Roof_Area)

# Lilliefor  Test
lillie.test(Roof_Area)

# Shapiro-wilk  Test
shapiro.test(Roof_Area)

summary(Roof_Area)

# Graphical Analysis 
# Quantiles Comparison

install.packages("car")
library(car)

qqPlot(EED$Cooling_Load, main="Quantiles Comparison of Cooling Load", ylab="Cooling Load", col="blue")
qqPlot(EED$Surface_Area, main="Quantiles Comparison of Surface Area", ylab="Surface Area", col="blue")
qqPlot(EED$Wall_Area, main="Quantiles Comparison of Wall Area", ylab="Wall Area", col="blue")
qqPlot(EED$Roof_Area, main="Quantiles Comparison of Roof Area", ylab="Roof Area", col="blue")

