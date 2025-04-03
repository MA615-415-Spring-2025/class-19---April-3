# Load necessary libraries
library(leaflet)
library(geojsonio)

# Specify the path to your GeoJSON file
geojson_file <- "C:/Users/hav1126/MSSP/AY 24-25/MA615 Fall 24/classes/Class 29 - nov 11 Shiny/boston.geojson"

# Read the GeoJSON file
boston_data <- geojson_read("boston.geojson", what = "sp")

# Create a leaflet map
leaflet(boston_data) %>%
  addTiles() %>%  # Add default OpenStreetMap tiles
  addPolygons(fillColor = "blue", 
              weight = 2, 
              opacity = 1, 
              color = "white", 
              fillOpacity = 0.5,
              highlightOptions = highlightOptions(weight = 5, color = "red", fillOpacity = 0.7)) %>%
  setView(lng = -71.0589, lat = 42.3601, zoom = 12)  # Center the map on Boston


# 
#   Libraries: 
# The script loads leaflet 
# for mapping and geojsonio for reading GeoJSON files.

# File Path: 
# Adjust the path to your GeoJSON file as needed.

# Reading GeoJSON: 
# The geojson_read function reads the 
# GeoJSON file into a spatial object.

# Creating the Map: 
# The leaflet function initializes the map, 
# and addPolygons adds the GeoJSON data to 
# the map with specified styling.

# View Settings: 
# The setView function centers the map on Boston.

# Running the Script:
#   Make sure to run this script in an 
# R environment that supports interactive 
# graphics, such as RStudio. 

# 

