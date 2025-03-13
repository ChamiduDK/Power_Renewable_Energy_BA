attach(EED)

# Convert Orientation to a factor (categorical variable)
data$Orientation <- as.factor(data$Orientation)

# Perform One-Way ANOVA test
anova_result <- aov(Cooling_Load ~ Orientation, data = data)
anova_result
summary(anova_result)

# Cooling Load vs Building Orientation

boxplot(Cooling_Load~Orientation, main="Cooling Load vs Building Orientation",
        xlab = "Building Orientation",ylab="Cooling Load")