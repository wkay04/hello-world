# Interactive Map of NY Assembly District 34
# This script creates a zoomable interactive map with OpenStreetMap tiles

# Load required libraries
library(leaflet)
library(tigris)
library(sf)

# Set options to cache tigris data
options(tigris_use_cache = TRUE)

# Download NY State Assembly Districts
# Using the most recent year available
ny_assembly <- state_legislative_districts(
  state = "NY",
  house = "lower",  # Lower house = Assembly
  year = 2022
)

# Filter for Assembly District 34
ad34 <- ny_assembly[ny_assembly$NAMELSAD == "State Assembly District 34", ]

# If the exact name doesn't match, try alternative filtering
if (nrow(ad34) == 0) {
  # Try filtering by SLDLST field (State Legislative District Lower Chamber)
  ad34 <- ny_assembly[ny_assembly$SLDLST == "034" | ny_assembly$SLDLST == "34", ]
}

# Check if we found the district
if (nrow(ad34) == 0) {
  stop("Assembly District 34 not found. Available districts: ",
       paste(unique(ny_assembly$NAMELSAD), collapse = ", "))
}

# Transform to WGS84 coordinate system for leaflet
ad34 <- st_transform(ad34, 4326)

# Get the centroid for initial map center
center <- st_coordinates(st_centroid(ad34))

# Create interactive map with OpenStreetMap tiles
interactive_map <- leaflet(ad34) %>%
  # Add OpenStreetMap tiles (default zoomable basemap)
  addTiles() %>%
  # Add the district boundary as a polygon
  addPolygons(
    fillColor = "lightblue",
    fillOpacity = 0.4,
    color = "darkblue",
    weight = 2,
    opacity = 1,
    highlightOptions = highlightOptions(
      weight = 3,
      color = "red",
      fillOpacity = 0.6,
      bringToFront = TRUE
    ),
    popup = paste0(
      "<strong>", ad34$NAMELSAD, "</strong><br>",
      "District: ", ad34$SLDLST, "<br>",
      "Area: ", round(as.numeric(st_area(ad34)) / 1000000, 2), " sq km"
    )
  ) %>%
  # Set initial view to center on the district
  setView(lng = center[1], lat = center[2], zoom = 11) %>%
  # Add layer controls
  addLayersControl(
    overlayGroups = c("Assembly District 34"),
    options = layersControlOptions(collapsed = FALSE)
  ) %>%
  # Add scale bar
  addScaleBar(position = "bottomleft") %>%
  # Add zoom control
  addControl(
    html = "<strong>NY Assembly District 34</strong><br>Interactive Map",
    position = "topright"
  )

# Display the map
print(interactive_map)

# Optional: Save the map as an HTML file
library(htmlwidgets)
saveWidget(
  interactive_map,
  file = "ny_ad34_map.html",
  selfcontained = TRUE,
  title = "NY Assembly District 34 Interactive Map"
)

cat("Interactive map created successfully!\n")
cat("Map saved to: ny_ad34_map.html\n")
cat("You can open this file in any web browser.\n")
