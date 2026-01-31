# R7D Setup Guide

## Quick Start

### 1. **Copy Assets**
You need to add the following files to the `r7d/` folder:

#### For Pizza:
- `pizza.png` - High-quality pizza image
- `pizza.glb` - 3D model for Android
- `pizza.usdz` - 3D model for iOS

#### For Salad:
- `salad.png` - High-quality salad image
- `salad.glb` - 3D model for Android
- `salad.usdz` - 3D model for iOS

### 2. **Asset Sources**
You can get assets from:
- **Images**: Use existing assets from `../assets/` folder
- **3D Models**: Use existing models from `../models/` folder
- **New Assets**: Create or download from 3D model libraries

### 3. **Copy Existing Assets**

```bash
# From the ar_page directory, run:

# Copy images
cp assets/pizza.png r7d/pizza.png

# Copy 3D models (if available)
cp models/pizzaSpecial.glb r7d/pizza.glb
cp models/pizzaSpecial.usdz r7d/pizza.usdz

# For salad, you might need to use pasta or create new assets
cp assets/pasta.png r7d/salad.png
cp models/pasta.glb r7d/salad.glb
cp models/pasta.usdz r7d/salad.usdz
```

### 4. **Run the Application**

#### Option A: Local Server (Recommended)
```bash
cd r7d
python3 -m http.server 8080
# Then open: http://localhost:8080
```

#### Option B: Live Server (VS Code)
1. Install "Live Server" extension
2. Right-click `index.html`
3. Select "Open with Live Server"

#### Option C: Direct File
```bash
open index.html
# Note: AR features require HTTPS in production
```

### 5. **Testing AR**

**On Desktop:**
- AR button will show but won't work (needs mobile device)
- Test navigation and animations

**On Mobile:**
1. Deploy to HTTPS server (GitHub Pages, Netlify, etc.)
2. Open on iOS/Android device
3. Click "View on your table"
4. Grant camera permissions
5. Point at flat surface

### 6. **Customization**

#### Update Menu Items
Edit the `menuItems` array in `index.html`:

```javascript
const menuItems = [
    {
        id: 'pizza',
        title: "Italian Supreme",
        price: "$16.95",
        type: "Veg",
        png: "pizza.png",
        model: "pizza.glb",
        usdz: "pizza.usdz",
        ingredients: [
            { name: "Tomato", color: "#ff6b6b" },
            { name: "Basil", color: "#4ade80" },
            { name: "Mozzarella", color: "#fef3c7" },
            { name: "Olives", color: "#a78bfa" },
            { name: "Capsicum", color: "#4ade80" }
        ]
    },
    // Add more items here
];
```

#### Change Branding
```html
<!-- Update header badge -->
<div class="brand-tag">Your Restaurant Name</div>
```

#### Update Analytics
```javascript
const GA_MEASUREMENT_ID = 'G-YOUR-ID-HERE';
```

## Asset Requirements

### Images (PNG)
- **Format**: PNG with transparent background
- **Size**: 1000x1000px minimum
- **Quality**: High resolution for retina displays
- **Background**: Transparent or white
- **Optimization**: Compress for web (use TinyPNG)

### 3D Models

#### GLB (Android)
- **Format**: Binary glTF (.glb)
- **Size**: < 5MB recommended
- **Textures**: Embedded in GLB
- **Tools**: Blender, Sketchfab

#### USDZ (iOS)
- **Format**: Universal Scene Description (.usdz)
- **Size**: < 5MB recommended
- **Conversion**: Use Reality Converter (Mac)
- **Tools**: Reality Composer, Blender

## Deployment

### GitHub Pages
```bash
# 1. Create new repo or use existing
git add r7d/
git commit -m "Add R7D menu viewer"
git push

# 2. Enable GitHub Pages
# Settings → Pages → Source: main branch → /r7d folder

# 3. Access at:
# https://username.github.io/repo-name/r7d/
```

### Netlify
```bash
# 1. Drag and drop r7d/ folder to Netlify
# 2. Get instant HTTPS URL
# 3. Custom domain optional
```

### Vercel
```bash
# 1. Install Vercel CLI
npm i -g vercel

# 2. Deploy
cd r7d
vercel

# 3. Follow prompts
```

## Troubleshooting

### Images Not Showing
```bash
# Check file names match exactly
ls r7d/
# Should show: pizza.png, salad.png, etc.

# Verify paths in code
# png: "pizza.png" (not "Pizza.png" or "pizza.PNG")
```

### AR Not Working
1. **HTTPS Required**: AR only works on HTTPS (or localhost)
2. **File Formats**: Ensure GLB for Android, USDZ for iOS
3. **File Size**: Large models may fail to load
4. **Permissions**: Camera access must be granted

### Animations Choppy
1. Reduce image file sizes
2. Optimize 3D models (reduce polygons)
3. Test on different devices
4. Check browser performance

## File Structure

```
r7d/
├── index.html          ← Main application
├── README.md           ← Documentation
├── SETUP.md            ← This file
├── pizza.png           ← Add this
├── pizza.glb           ← Add this
├── pizza.usdz          ← Add this
├── salad.png           ← Add this
├── salad.glb           ← Add this
└── salad.usdz          ← Add this
```

## Next Steps

1. ✅ Copy/create required assets
2. ✅ Test locally with a server
3. ✅ Customize menu items
4. ✅ Update branding
5. ✅ Deploy to HTTPS
6. ✅ Test AR on mobile devices
7. ✅ Monitor analytics

## Support

For issues or questions:
1. Check the main README.md
2. Verify all assets are present
3. Test in different browsers
4. Check browser console for errors

---

**Remember**: This is a separate project. Keep it isolated in the `r7d/` folder and don't mix with the main AR page project.
