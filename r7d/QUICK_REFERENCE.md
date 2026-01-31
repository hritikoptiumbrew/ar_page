# R7D Quick Reference

## 🚀 Quick Start
```bash
cd r7d
python3 -m http.server 8080
# Open: http://localhost:8080
```

## 📁 Files
- `index.html` - Main app
- `README.md` - Full docs
- `SETUP.md` - Setup guide
- `PROJECT_SUMMARY.md` - Overview
- `*.png` - Dish images
- `*.glb` - Android AR models
- `*.usdz` - iOS AR models

## 🎨 Features
- Dark theme with gold accents
- Book-like page navigation
- Floating dish animations
- AR integration (iOS/Android)
- Google Analytics tracking
- Responsive mobile design

## 📊 Current Menu
1. **Italian Supreme** (Pizza) - $16.95 - Veg
2. **Grilled Chicken Salad** - $14.50 - Non-Veg

## ➕ Add Menu Item
```javascript
// In index.html, add to menuItems array:
{
    id: 'dish',
    title: "Dish Name",
    price: "$XX.XX",
    type: "Veg", // or "Non-Veg"
    png: "dish.png",
    model: "dish.glb",
    usdz: "dish.usdz",
    ingredients: [
        { name: "Ing1", color: "#color" }
    ]
}
```

## 🎨 Customize Colors
```css
:root {
  --gold: #D4AF37;
  --bg-dark: #050505;
}
```

## 📱 Test Mobile
```bash
# Resize browser to 375x667
# Or use browser DevTools
```

## 🌐 Deploy
**GitHub Pages:**
```bash
git add r7d/
git commit -m "Add R7D"
git push
# Enable Pages: Settings → Pages → /r7d
```

**Netlify:**
- Drag `r7d/` folder to Netlify

**Vercel:**
```bash
cd r7d
vercel
```

## 📊 Analytics Events
- `view_dish` - Dish viewed
- `start_ar` - AR activated

## 🔧 Troubleshooting
**Images not loading?**
- Check file names match exactly
- Verify files in `r7d/` folder

**AR not working?**
- Use HTTPS (not file://)
- Test on mobile device
- Check model file sizes

**CORS errors?**
- Use local server (not file://)
- `python3 -m http.server 8080`

## 📚 Full Docs
- See `README.md` for complete documentation
- See `SETUP.md` for detailed setup
- See `PROJECT_SUMMARY.md` for overview

## 🎯 Key Differences from Main Project
| Main AR Page | R7D |
|--------------|-----|
| Landing page | Menu viewer |
| Light theme | Dark theme |
| Orange accents | Gold accents |
| Scroll sections | Page navigation |
| Montserrat | Inter + Playfair |

## ✅ Checklist
- [x] Project created in `r7d/` folder
- [x] Assets copied (images + models)
- [x] Documentation complete
- [ ] Test locally with server
- [ ] Customize menu items
- [ ] Update branding
- [ ] Deploy to production
- [ ] Test AR on mobile

## 🎉 Ready to Use!
Your premium menu viewer is ready. Keep it separate from the main AR page project.

**Location**: `/Users/apple/Desktop/ar_page/r7d/`
