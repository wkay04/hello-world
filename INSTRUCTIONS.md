# NY Assembly District 34 Interactive Map

## Quick Start - View on iPhone (Easiest!)

**Option 1: Direct GitHub Link** (Recommended)
1. After I commit the files, you can view the map directly on your iPhone by navigating to the raw HTML file on GitHub
2. Open Safari on your iPhone and go to: `https://raw.githubusercontent.com/wkay04/hello-world/claude/ny-ad34-interactive-map-014gYAFtV5E6UMMt432YB1Vd/ny_ad34_map.html`
3. The map will load instantly - no setup required!

**Option 2: GitHub Pages** (Best for sharing)
- I can enable GitHub Pages which will give you a clean URL like: `https://wkay04.github.io/hello-world/ny_ad34_map.html`

**Option 3: Download and Open Locally**
1. Download `ny_ad34_map.html` from GitHub to your computer
2. Email it to yourself or save to iCloud Drive
3. Open the file from your iPhone - it will open in Safari

## Files Included

1. **ny_ad34_map.html** - Standalone HTML map (works immediately, no R needed!)
2. **ny_ad34_interactive_map.R** - R script version (for advanced users)

## Description
Two versions available:
- **HTML version**: Ready to use immediately on any device including iPhone
- **R script version**: Creates an interactive, zoomable map of New York Assembly District 34 using OpenStreetMap tiles

## Features

### HTML Version (ny_ad34_map.html)
- **Works on iPhone/iPad**: Optimized for mobile Safari
- **No installation required**: Just open in any browser
- **Interactive**: Touch to pan, pinch to zoom
- **OpenStreetMap tiles**: Detailed street-level mapping
- **Live boundary data**: Fetches official district boundaries from US Census
- **Location button**: Find your current location (on mobile)
- **Popup information**: Tap on the district to see details
- **Fully responsive**: Works on any screen size

### R Script Version (ny_ad34_interactive_map.R)
- **Offline capable**: Downloads district data locally
- **Customizable**: Modify the R code for different districts
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
