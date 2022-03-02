##Layers
# Temperature
# Salinity
# Currents velocity
# Ice thickness
# Sea ice concentration
# Nitrate
# Phosphate
# Silicate
# Dissolved molecular oxygen
# Iron
# Chlorophyll
# Phytoplankton
# Primary productivity
# Calcite
# pH
# Photosynt. Avail. Radiation
# Diffuse attenuation
# Cloud cover



selectLayer.byname<- function(name,level){
  layer.names <- c("Sea water temperature",
                   "Salinity",
                  "Currents velocity",
                  "Ice thickness",
                  "Sea ice concentration",
                  "Nitrate",
                  "Phosphate",
                  "Silicate",
                  "Dissolved molecular oxygen",
                  "Iron",
                  "Chlorophyll",
                  "Phytoplankton",
                  "Primary productivity",
                  "Calcite",
                  "pH",
                  "Photosynt.Avail.Radiation",
                  "Diffuse attenuation",
                  "Cloud cover")
  
  levels<- c("min","max","mean")
  
  if (name %in% layer.names == TRUE & level %in% levels == TRUE){
  list.layers<- list_Bio[grepl(name, list_Bio$name) &
                           grepl(level,list_Bio$name),]
  }else{
    message("Please check if layer name is correct: ")
    print(layer.names)
    message("And level: ")
    print(levels)
  }
}

  
list_Nitrate<-selectLayer.byname("Nitrate","max")








  
