# Enable GitHub Pages - Step-by-Step Guide

Follow these steps to enable GitHub Pages for your repository, which will give you a clean URL to access your map on iPhone or any device.

## Steps to Enable GitHub Pages:

### 1. Go to Repository Settings
1. Open your browser and go to: `https://github.com/wkay04/hello-world`
2. Click on the **Settings** tab (near the top right of the page)

### 2. Navigate to Pages Section
1. In the left sidebar, scroll down and click on **Pages**
2. This will open the GitHub Pages configuration

### 3. Configure Source Branch
1. Under **Source** section, click the dropdown that says "None"
2. Select the branch: **claude/ny-ad34-interactive-map-014gYAFtV5E6UMMt432YB1Vd**
3. Keep the folder as **/ (root)**
4. Click **Save**

### 4. Wait for Deployment
1. GitHub will take 1-2 minutes to build and deploy your site
2. Refresh the page after a minute
3. You should see a message: "Your site is live at https://wkay04.github.io/hello-world/"

### 5. Access Your Map
Once deployed, your map will be available at:
```
https://wkay04.github.io/hello-world/ny_ad34_map.html
```

## Alternative: Use Main Branch (Recommended for Cleaner Setup)

If you want the map on your main branch instead:

1. First, merge the changes from `claude/ny-ad34-interactive-map-014gYAFtV5E6UMMt432YB1Vd` into your main branch
2. Then in GitHub Pages settings, select **main** as the source branch
3. The URL will still be: `https://wkay04.github.io/hello-world/ny_ad34_map.html`

## iPhone Access

Once GitHub Pages is enabled, simply:
1. Open Safari on your iPhone
2. Go to: `https://wkay04.github.io/hello-world/ny_ad34_map.html`
3. Bookmark it for easy access!
4. You can also add it to your home screen:
   - Tap the Share button
   - Select "Add to Home Screen"
   - Now it works like an app!

## Troubleshooting

**Problem: "Your site is having trouble building"**
- Solution: Make sure the HTML file is valid (it is!)
- Try selecting the branch again and saving

**Problem: 404 Not Found**
- Solution: Wait 2-3 minutes for the initial deployment
- Clear your browser cache
- Make sure you're using the exact URL with `/ny_ad34_map.html`

**Problem: Page loads but map doesn't show**
- Solution: Check your internet connection
- The map needs to load data from OpenStreetMap and Census Bureau
- Try refreshing the page

## Benefits of GitHub Pages

- **Clean URL**: Easy to remember and share
- **Always available**: Hosted by GitHub, no server needed
- **Free**: No hosting costs
- **HTTPS**: Secure connection
- **Fast**: Global CDN for quick loading
