attach(EED)

# Regression Analysis 

# Cooling Load vs Surface Area 

cooling_surface.Model<-lm(Cooling_Load~Surface_Area,na.exclude=TRUE)
cooling_surface.Model
summary(cooling_surface.Model)

73.4+(-0.072)*515

Surface_Area_Cool<- predict(cooling_surface.Model,EED)
Surface_Area_Cool


# Cooling Load vs Wall Area 

cooling_wall.Model<-lm(Cooling_Load~Wall_Area,na.exclude=TRUE)
cooling_wall.Model
summary(cooling_wall.Model)

(-5.07)+0.093*294

Wall_Area_Cool<- predict(cooling_wall.Model,EED)
Wall_Area_Cool

# Cooling Load vs Roof Area 

cooling_roof.Model<-lm(Cooling_Load~Roof_Area,na.exclude=TRUE)
cooling_roof.Model
summary(cooling_roof.Model)

56.7+(-0.18)*110

Roof_Area_Cool<- predict(cooling_roof.Model,EED)
Roof_Area_Cool


# Multiple linear regression

model <- lm(Cooling_Load ~ Relative_Compactness + Surface_Area + Glazing_Area_Distribution, data = EED)
summary(model)


cor(data[, c("Surface_Area", "Wall_Area", "Roof_Area")])
