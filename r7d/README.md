# R7D - Signature Menu Collection

## Overview
Premium restaurant menu viewer with a luxurious book-like interface. Features smooth page transitions, AR integration, and elegant design with gold accents.

## Features

### 🎨 Design
- **Dark Premium Theme**: Black background with gold accents (#D4AF37)
- **Animated Background**: Subtle gradient drift animation
- **Floating Dish Images**: Smooth floating animation for visual appeal
- **Glassmorphism**: Backdrop blur effects on UI elements
- **Premium Sheen Effect**: Animated shine on AR button

### 📖 Book Interface
- **Page Navigation**: Left/right arrows to browse menu items
- **Smooth Transitions**: Fade and scale animations when changing dishes
- **Cascade Animations**: Staggered reveal of content elements
- **Disabled States**: Navigation buttons disable at start/end

### 🍽️ Menu Items
Each dish includes:
- **Title**: Elegant Playfair Display serif font
- **Diet Badge**: Veg (green) or Non-Veg (red) indicator
- **Price**: Gold italic pricing
- **Ingredients**: Color-coded ingredient tags with dots
- **AR Button**: Premium gold gradient button with icon

### 📱 AR Integration
- **Model Viewer**: Google's model-viewer for AR
- **Multi-Platform**: Supports WebXR, Scene Viewer (Android), Quick Look (iOS)
- **Hidden Layer**: AR viewer hidden until activated
- **Auto-scale**: Models automatically scale in AR
- **Session Detection**: UI hides when AR is active

### 📊 Analytics
- **Google Analytics**: Integrated with GA4 (G-1Q36T0T22F)
- **Event Tracking**:
  - `view_dish`: Tracks when a dish is viewed
  - `start_ar`: Tracks when AR is activated
- **Category Labels**: Proper event categorization

## File Structure

```
r7d/
├── index.html          # Main application
├── README.md           # This file
├── pizza.png           # Pizza dish image
├── pizza.glb           # Pizza 3D model (Android)
├── pizza.usdz          # Pizza 3D model (iOS)
├── salad.png           # Salad dish image
├── salad.glb           # Salad 3D model (Android)
└── salad.usdz          # Salad 3D model (iOS)
```

## Menu Data Structure

```javascript
{
    id: 'pizza',
    title: "Italian Supreme",
    price: "$16.95",
    type: "Veg",           // or "Non-Veg"
    png: "pizza.png",      // Dish image
    model: "pizza.glb",    // Android AR model
    usdz: "pizza.usdz",    // iOS AR model
    ingredients: [
        { name: "Tomato", color: "#ff6b6b" },
        { name: "Basil", color: "#4ade80" },
        // ... more ingredients
    ]
}
```

## How It Works

### 1. **Visual Layer**
- PNG images displayed with floating animation
- Smooth transitions when changing dishes
- Drop shadow for depth

### 2. **AR Layer**
- Hidden `<model-viewer>` element (1x1px, opacity 0)
- Loads GLB (Android) and USDZ (iOS) models
- Activated via "View on your table" button

### 3. **Navigation**
- Previous/Next buttons to browse menu
- Async page turning with animation states
- Prevents rapid clicking during transitions

### 4. **Animations**
- **Floating**: Dish images float up and down
- **Page Turn**: Fade out → swap → fade in
- **Cascade**: Content elements appear with stagger
- **Sheen**: Premium shine effect on button

## Customization

### Adding New Menu Items

```javascript
menuItems.push({
    id: 'newdish',
    title: "New Dish Name",
    price: "$19.95",
    type: "Veg",
    png: "newdish.png",
    model: "newdish.glb",
    usdz: "newdish.usdz",
    ingredients: [
        { name: "Ingredient 1", color: "#color1" },
        { name: "Ingredient 2", color: "#color2" }
    ]
});
```

### Changing Colors

```css
:root {
  --bg-dark: #050505;        /* Background */
  --gold: #D4AF37;           /* Primary accent */
  --gold-gradient: linear-gradient(135deg, #D4AF37 0%, #AA8A28 100%);
  --text-main: #ffffff;      /* Main text */
  --text-muted: rgba(255, 255, 255, 0.7);  /* Muted text */
}
```

### Adjusting Animations

```css
/* Float speed */
@keyframes floatImage {
    /* Change from 6s to desired duration */
}

/* Background drift */
animation: subtleDrift 20s ease infinite;

/* Cascade timing */
.anim-title { animation-delay: 0.1s; }
.anim-diet  { animation-delay: 0.15s; }
/* Adjust delays as needed */
```

## Browser Support

- ✅ Chrome/Edge (WebXR)
- ✅ Safari iOS (Quick Look)
- ✅ Android Chrome (Scene Viewer)
- ✅ Modern browsers with model-viewer support

## Assets Required

For each menu item, you need:
1. **PNG Image**: High-quality dish photo (transparent background recommended)
2. **GLB Model**: 3D model for Android AR
3. **USDZ Model**: 3D model for iOS AR

## Performance

- **Optimized Animations**: Uses `will-change` for GPU acceleration
- **Async Loading**: Images preload before transition
- **Minimal DOM**: Only current page content rendered
- **Efficient Transitions**: CSS transforms for smooth 60fps

## Mobile Optimization

- **Responsive Design**: Adapts to screen sizes
- **Touch-Friendly**: Large touch targets
- **No Scroll**: Fixed layout prevents scrolling
- **User-Scalable**: Disabled for app-like experience

## Analytics Events

### view_dish
```javascript
gtag('event', 'view_dish', {
    'event_category': 'Menu',
    'event_label': 'Italian Supreme'
});
```

### start_ar
```javascript
gtag('event', 'start_ar', {
    'event_category': 'Interaction',
    'event_label': 'Italian Supreme'
});
```

## Tips

1. **Image Quality**: Use high-resolution PNG images (1000x1000px+)
2. **Model Size**: Keep 3D models under 5MB for fast loading
3. **Ingredient Colors**: Use vibrant colors for visual appeal
4. **Testing**: Test AR on actual devices (iOS/Android)
5. **Analytics**: Monitor which dishes get most AR views

## Troubleshooting

**AR not working?**
- Ensure models are in correct format (GLB/USDZ)
- Check file paths are correct
- Test on HTTPS (required for AR)

**Images not loading?**
- Verify file names match data
- Check file paths
- Ensure images are in same directory

**Animations choppy?**
- Reduce image sizes
- Optimize 3D models
- Check browser performance

## Future Enhancements

- [ ] Add more menu items
- [ ] Implement search/filter
- [ ] Add nutritional information
- [ ] Include customer reviews
- [ ] Add to cart functionality
- [ ] Multi-language support
- [ ] Voice navigation
- [ ] Dietary filters (vegan, gluten-free, etc.)

## License

Proprietary - Restaurant 7D Signature Collection

---

**Note**: This is a separate project from the main AR page. Keep assets and code isolated in the `r7d/` folder.
