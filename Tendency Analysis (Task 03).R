install.packages("dplyr")
library(dplyr)

#Lord the given data set 
Energy_Efficiency_Data <- read.csv("EED.csv")

# Custom function to compute mode
get_mode <- function(x) {
  uniq_vals <- unique(x)
  uniq_vals[which.max(tabulate(match(x, uniq_vals)))]
}

#Calculate statistics for Cooling Load
Cooling_Load_Statistics <- Energy_Efficiency_data %>%
  summarise(
    Minimum = min(Cooling_Load, na.rm = TRUE),
    Maximum = max(Cooling_Load, na.rm = TRUE),
    Mean = mean(Cooling_Load, na.rm = TRUE),
    median = median(Cooling_Load, na.rm = TRUE),
    Mode = get_mode(Cooling_Load)
  )
print(Cooling_Load_Statistics)

#Calculate statistics for Surface Area
Surface_Area_Statistics <- Energy_Efficiency_data %>%
  summarise(
    Minimum = min(Surface_Area, na.rm = TRUE),
    Maximum = max(Surface_Area, na.rm = TRUE),
    Mean = mean(Surface_Area, na.rm = TRUE),
    median = median(Surface_Area, na.rm = TRUE),
    Mode = get_mode(Surface_Area)
  )
print(Surface_Area_Statistics)

#Calculate statistics for Wall Area
Wall_Area_Statistics <- Energy_Efficiency_data %>%
  summarise(
    Minimum = min(Wall_Area, na.rm = TRUE),
    Maximum = max(Wall_Area, na.rm = TRUE),
    Mean = mean(Wall_Area, na.rm = TRUE),
    median = median(Wall_Area, na.rm = TRUE),
    Mode = get_mode(Wall_Area)
  )
print(Wall_Area_Statistics)

#Calculate statistics for Roof Area
Roof_Area_Statistics <- Energy_Efficiency_data %>%
  summarise(
    Minimum = min(Roof_Area, na.rm = TRUE),
    Maximum = max(Roof_Area, na.rm = TRUE),
    Mean = mean(Roof_Area, na.rm = TRUE),
    median = median(Roof_Area, na.rm = TRUE),
    Mode = get_mode(Roof_Area)
  )
print(Roof_Area_Statistics)


#The calculate Summary Statistics.
#Variable - Cooling Load, Surface Area, Wall Area and Roof Area. 
#Metrics - Minimum, Maximum, Mean, Median, Mode, Standard Deviation.

Summary_Statistics <- Energy_Efficiency_Data %>% 
  summarise(
    Cooling_Load_Minimum = min(Cooling_Load, na.rm = TRUE),
    Cooling_Load_Maximum = max(Cooling_Load, na.rm = TRUE),
    Cooling_Load_Mean = mean(Cooling_Load, na.rm = TRUE),
    Cooling_Load_Median = median(Cooling_Load, na.rm = TRUE),
    Cooling_Load_Mode = get_mode(Cooling_Load),
    Cooling_Load_Standard_Deviation = sd(Cooling_Load, na.rm = TRUE),
    
    Surface_Area_Minimum = min(Surface_Area, na.rm = TRUE),
    Surface_Area_Maximum = max(Surface_Area, na.rm = TRUE),
    Surface_Area_Mean = mean(Surface_Area, na.rm = TRUE),
    Surface_Area_Median = median(Surface_Area, na.rm = TRUE),
    Surface_Area_Mode = get_mode(Surface_Area),
    Surface_Area_Standard_Deviation = sd(Surface_Area, na.rm = TRUE),
    
    Wall_Area_Minimum = min(Wall_Area, na.rm = TRUE),
    Wall_Area_Maximum = max(Wall_Area, na.rm = TRUE),
    Wall_Area_Mean = mean(Wall_Area, na.rm = TRUE),
    Wall_Area_Median = median(Wall_Area, na.rm = TRUE),
    Wall_Area_Mode = get_mode(Wall_Area),
    Wall_Area_Standard_Deviation = sd(Wall_Area, na.rm = TRUE),
    
    Roof_Area_Minimum = min(Roof_Area, na.rm = TRUE),
    Roof_Area_Maximum = max(Roof_Area, na.rm = TRUE),
    Roof_Area_Mean = mean(Roof_Area, na.rm = TRUE),
    Roof_Area_Median = median(Roof_Area, na.rm = TRUE),
    Roof_Area_Mode = get_mode(Roof_Area),
    Roof_Area_Standard_Deviation = sd(Roof_Area, na.rm = TRUE),
  )

#Print Summary Statistics
print(Summary_Statistics)

#Central Tendency Analysis and Bell Curves
Central_Tendency <- Energy_Efficiency_Data %>%
  summarise(
    Cooling_Load_Mean = mean(Cooling_Load, na.rm = TRUE),
    Cooling_Load_Median = median(Cooling_Load, na.rm = TRUE),
    Cooling_Load_Standard_Deviation = sd(Cooling_Load, na.rm = TRUE),
    
    Surface_Area_Mean = mean(Surface_Area, na.rm = TRUE),
    Surface_Area_Median = median(Surface_Area, na.rm = TRUE),
    Surface_Area_Standard_Deviation = sd(Surface_Area, na.rm = TRUE),
    
    Wall_Area_Mean = mean(Wall_Area, na.rm = TRUE),
    Wall_Area_Median = median(Wall_Area, na.rm = TRUE),
    Wall_Area_Standard_Deviation = sd(Wall_Area, na.rm = TRUE),
    
    Roof_Area_Mean = mean(Roof_Area, na.rm = TRUE),
    Roof_Area_Median = median(Roof_Area, na.rm = TRUE),
    Roof_Area_Standard_Deviation = sd(Roof_Area, na.rm = TRUE),
  )

print(Central_Tendency)

# graphical analysis for Cooling Load Distribution
attach(data)
hist(Cooling_Load, main = "Cooling Load Distribution", prob = TRUE,
     xlab = "Cooling Load", ylab = "Density")
curve(dnorm(x,sd=sd(Cooling_Load,na.rm =TRUE),
            mean=mean(Cooling_Load,na.rm =TRUE)),add=TRUE)

# graphical analysis for Surface Area Distribution
attach(data)
hist(Surface_Area, main = "Surface Area Distribution", prob = TRUE,
     xlab = "Surface Area", ylab = "Density")
curve(dnorm(x,sd=sd(Surface_Area,na.rm =TRUE),
            mean=mean(Surface_Area,na.rm =TRUE)),add=TRUE)

# graphical analysis for Wall Area Distribution
attach(data)
hist(Wall_Area, main = "Wall Area Distribution", prob = TRUE,
     xlab = "Wall Area", ylab = "Density")
curve(dnorm(x,sd=sd(Wall_Area,na.rm =TRUE),
            mean=mean(Wall_Area,na.rm =TRUE)),add=TRUE)

# graphical analysis for Roof Area Distribution
attach(data)
hist(Roof_Area, main = "Roof Area Distribution", prob = TRUE,
     xlab = "Roof Area", ylab = "Density")
curve(dnorm(x,sd=sd(Roof_Area,na.rm =TRUE),
            mean=mean(Roof_Area,na.rm =TRUE)),add=TRUE)
