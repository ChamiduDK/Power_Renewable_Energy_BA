
scatterplotMatrix(~Cooling_Load+Glazing_Area_Distribution+Relative_Compactness+Surface_Area,
   regLine=FALSE, smooth=FALSE, diagonal=list(method="density"), data=EED)
with(EED, Hist(Cooling_Load, groups=Orientation, scale="frequency", 
  breaks="Sturges", col="darkgray"))
with(EED, discretePlot(Glazing_Area, scale="frequency"))
with(EED, discretePlot(Overall_Height, scale="frequency"))
with(EED, discretePlot(Glazing_Area, scale="frequency"))
with(EED, discretePlot(Overall_Height, scale="frequency"))
with(EED, discretePlot(Relative_Compactness, scale="frequency"))
with(EED, discretePlot(Roof_Area, scale="frequency"))
scatterplotMatrix(~Cooling_Load+Glazing_Area+Glazing_Area_Distribution+Heating_Load+Overall_Height+Relative_Compactness,
   regLine=FALSE, smooth=FALSE, diagonal=list(method="density"), data=EED)

