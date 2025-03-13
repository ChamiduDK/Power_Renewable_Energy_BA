attach(EED)

# Spearman correlation test
cor.test(data$Cooling_Load, data$Surface_Area, method="spearman",conf.level=0.95)
cor.test(data$Cooling_Load, data$Wall_Area, method="spearman",conf.level=0.95)
cor.test(data$Cooling_Load, data$Roof_Area, method="spearman",conf.level=0.95)


# Scatter plot for Cooling Load vs Surface Area
plot(data$Cooling_Load ~ data$Surface_Area,
     main="Cooling Load vs Surface Area",
     xlab="Surface Area ", 
     ylab="Cooling Load (BTU)") 
abline(lm(data$Cooling_Load ~ data$Surface_Area), col="red", lwd=2)

# Scatter plot for Cooling Load vs Wall Area
plot(data$Cooling_Load ~ data$Wall_Area,
     main="Cooling Load vs Wall Area",
     xlab="Wall Area ", 
     ylab="Cooling Load (BTU)") 
abline(lm(data$Cooling_Load ~ data$Wall_Area), col="red", lwd=2)

# Scatter plot for Cooling Load vs Roof Area
plot(data$Cooling_Load ~ data$Roof_Area,
     main="Cooling Load vs Roof Area",
     xlab="Roof Area ", 
     ylab="Cooling Load (BTU)",) 
abline(lm(data$Cooling_Load ~ data$Roof_Area), col="red", lwd=2)



