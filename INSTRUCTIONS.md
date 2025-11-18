# NY Assembly District 34 Interactive Map

## Description
This R script creates an interactive, zoomable map of New York Assembly District 34 using OpenStreetMap tiles.

## Features
- **Interactive**: Click and drag to pan, scroll to zoom
- **OpenStreetMap tiles**: Detailed street-level mapping
- **District boundaries**: Clearly marked AD 34 boundaries
- **Popup information**: Click on the district to see details
- **HTML export**: Generates a standalone HTML file you can share

## Required R Packages

Install the required packages by running:

```r
install.packages("leaflet")
install.packages("tigris")
install.packages("sf")
install.packages("htmlwidgets")
```

## Usage

### Option 1: Run in RStudio or R Console
```r
source("ny_ad34_interactive_map.R")
```

### Option 2: Run from command line
```bash
Rscript ny_ad34_interactive_map.R
```

## Output

The script will:
1. Download NY Assembly District boundaries from the US Census Bureau
2. Filter for District 34
3. Display an interactive map in your R viewer
4. Save the map as `ny_ad34_map.html` in the current directory

## Opening the Map

After running the script, open `ny_ad34_map.html` in any web browser to view the interactive map.

## Map Controls

- **Zoom**: Use mouse wheel or +/- buttons
- **Pan**: Click and drag
- **Info**: Click on the district boundary for details
- **Scale**: Bottom left shows distance scale
- **Reset**: Double-click to reset view

## Troubleshooting

If you encounter issues:
- Ensure you have an internet connection (required to download district data and OSM tiles)
- Make sure all R packages are installed
- Check that you have write permissions in the directory

## About NY Assembly District 34

Assembly District 34 is located in New York State. The map will automatically center on the district and provide area information when you click on the boundary.
