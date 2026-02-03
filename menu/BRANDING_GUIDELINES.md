# MenuXR - Branding Guidelines

## 🎨 Brand Identity

**MenuXR** is a modern, interactive AR menu platform that brings food to life through 3D visualization and augmented reality.

---

## 🎯 Brand Positioning

- **Modern & Innovative**: Cutting-edge AR technology
- **Premium Yet Accessible**: High-quality experience for all
- **Food-First**: Showcasing dishes in their best light
- **Interactive**: Engaging, not just informative

---

## 🌈 Color Palette

### Primary Colors

#### Orange (Primary Brand Color)
```css
--primary: #FF6B35
RGB: 255, 107, 53
HSL: 16°, 100%, 60%
```
**Usage**: Main CTAs, brand accents, highlights, AR button
**Meaning**: Energy, appetite, warmth, excitement

#### Orange Glow
```css
--primary-glow: rgba(255, 107, 53, 0.4)
```
**Usage**: Shadows, glows, hover effects

#### Light Orange (Accent)
```css
--accent: #E87A5D
RGB: 232, 122, 93
HSL: 13°, 74%, 64%
```
**Usage**: Secondary accents, gradients

---

### Neutral Colors

#### Black (Background)
```css
--bg-dark: #050505
RGB: 5, 5, 5
HSL: 0°, 0%, 2%
```
**Usage**: Main background, creates premium feel

#### Dark Gray (Secondary Background)
```css
Background Gradient: linear-gradient(125deg, #050505, #111111, #080808)
```
**Usage**: Animated background with subtle movement

#### White (Text)
```css
--text-main: #ffffff
RGB: 255, 255, 255
```
**Usage**: Primary text, headings, important content

#### Muted White (Secondary Text)
```css
--text-muted: rgba(255, 255, 255, 0.7)
RGB: 255, 255, 255, 70% opacity
```
**Usage**: Descriptions, secondary information, ingredient tags

---

### Ingredient Colors (AR Hotspots)

#### Red Tones
```css
Tomato/Strawberry: #ff6b6b
Sausage/Beef: #8b4513
Pepperoni: #ff6b6b
```

#### Green Tones
```css
Basil/Lettuce: #4ade80
Light Green: #86efac
Avocado: #a3e635
```

#### Yellow/Cream Tones
```css
Cheese/Cream: #fef3c7
Mustard: #fbbf24
Butter: #fef3c7
```

#### Purple Tones
```css
Olives: #a78bfa
Onion: #d8b4fe
```

#### Brown Tones
```css
Chocolate: #8b4513
Bread/Bun: #d4a574
Mushroom: #d4a574
```

#### Orange Tones
```css
Chicken/Carrot: #fdba74
```

---

## 📝 Typography

### Primary Font: Montserrat

**Font Family**: 'Montserrat', sans-serif
**Source**: Google Fonts
**Weights Used**: 300, 400, 500, 600, 700, 800

#### Why Montserrat?
- Modern, geometric sans-serif
- Excellent readability on screens
- Professional yet friendly
- Wide range of weights for hierarchy
- Pairs well with food imagery

---

### Font Sizes & Usage

#### Desktop

**Dish Title (H1)**
```css
font-size: 28px
font-weight: 700
line-height: 1.2
letter-spacing: normal
```
**Usage**: Main dish name

**Price**
```css
font-size: 20px
font-weight: 600
color: var(--primary)
```
**Usage**: Pricing display

**Diet Badge**
```css
font-size: 10px
font-weight: 700
text-transform: uppercase
letter-spacing: 1px
```
**Usage**: Veg/Non-Veg indicators

**Brand Tag**
```css
font-size: 10px
font-weight: 700
text-transform: uppercase
letter-spacing: 3px
```
**Usage**: "MENUXR COLLECTION" header

**Ingredient Tags**
```css
font-size: 10px
font-weight: 600
text-transform: uppercase
letter-spacing: 0.5px
```
**Usage**: Ingredient labels below dish

**AR Button**
```css
font-size: 14px
font-weight: 700
text-transform: uppercase
letter-spacing: 2px
```
**Usage**: "View on your table" CTA

**AR Hotspot Name**
```css
font-size: 12px
font-weight: 700
text-transform: uppercase
letter-spacing: 0.5px
```
**Usage**: Ingredient names in AR

**AR Hotspot Benefit**
```css
font-size: 9px
font-weight: 500
```
**Usage**: Health benefits in AR

---

#### Mobile (max-width: 600px)

**Dish Title**
```css
font-size: 20px
```

**Price**
```css
font-size: 16px
```

**AR Hotspot Name**
```css
font-size: 10px
```

**AR Hotspot Benefit**
```css
font-size: 8px
```

---

## 🎭 UI Components

### Buttons

#### Primary Button (AR CTA)
```css
Background: linear-gradient(135deg, #FF6B35 0%, #E87A5D 100%)
Padding: 18px 45px
Border-radius: 50px (fully rounded)
Color: #ffffff
Font-size: 14px
Font-weight: 700
Text-transform: uppercase
Letter-spacing: 2px
Box-shadow: 0 0 30px rgba(255, 107, 53, 0.4)
```

**Hover Effect**:
```css
transform: translateY(-3px)
box-shadow: 0 10px 40px rgba(255, 107, 53, 0.4)
```

**Animation**: Premium sheen effect (3.5s infinite)

---

#### Navigation Buttons
```css
Background: rgba(255, 255, 255, 0.03)
Border: 1px solid rgba(255, 107, 53, 0.3)
Width: 45px
Height: 45px
Border-radius: 50%
Color: #FF6B35
Backdrop-filter: blur(5px)
```

**Hover Effect**:
```css
Background: #FF6B35
Color: #000
Box-shadow: 0 0 15px rgba(255, 107, 53, 0.4)
```

---

### Badges

#### Veg Badge
```css
Color: #4ade80 (green)
Border: 1px solid rgba(74, 222, 128, 0.3)
Background: rgba(74, 222, 128, 0.1)
Padding: 4px 10px
Border-radius: 4px
```

#### Non-Veg Badge
```css
Color: #ff6b6b (red)
Border: 1px solid rgba(255, 107, 107, 0.3)
Background: rgba(255, 107, 107, 0.1)
Padding: 4px 10px
Border-radius: 4px
```

---

### Ingredient Tags
```css
Background: rgba(255, 255, 255, 0.05)
Border: 1px solid rgba(255, 255, 255, 0.08)
Padding: 6px 14px
Border-radius: 20px
Color: rgba(255, 255, 255, 0.7)
Backdrop-filter: blur(4px)
```

**Dot Indicator**:
```css
Width: 6px
Height: 6px
Border-radius: 50%
Background: [ingredient-specific color]
```

---

### AR Hotspots
```css
Background: rgba(0, 0, 0, 0.85)
Backdrop-filter: blur(10px)
Padding: 8px 14px
Border-radius: 8px
Box-shadow: 0 4px 12px rgba(0, 0, 0, 0.4)
```

**Icon Circle**:
```css
Width: 20px
Height: 20px
Border-radius: 50%
Background: [ingredient color]
```

**Pulse Animation**:
```css
Animation: pulse 2s infinite
Scale: 1 → 1.5
Opacity: 1 → 0.5
```

---

### Brand Tag (Header)
```css
Background: rgba(0, 0, 0, 0.4)
Border: 1px solid rgba(255, 107, 53, 0.3)
Border-radius: 50px
Padding: 8px 20px 8px 23px
Backdrop-filter: blur(10px)
```

---

## 🎬 Animations & Effects

### Page Transitions
```css
Animation: smoothSettle 0.6s cubic-bezier(0.25, 1, 0.5, 1)
From: opacity 0, translateY(25px)
To: opacity 1, translateY(0)
```

**Cascade Delays**:
- Title: 0.1s
- Badge/Price: 0.15s
- Ingredients: 0.25s
- AR Button: 0.3s

---

### Background Animation
```css
Animation: subtleDrift 20s ease infinite
Background: linear-gradient(125deg, #050505, #111111, #080808)
Background-size: 300% 300%
```

---

### Button Sheen Effect
```css
Animation: premiumSheen 3.5s infinite ease-in-out
Gradient: linear-gradient(90deg, transparent, rgba(255,255,255,0.6), transparent)
Movement: -150% → 150%
```

---

### Model Swap Animation
```css
Swapping Out:
  opacity: 0
  transform: scale(0.9) translateY(20px)

Swapping In:
  opacity: 0
  transform: scale(1.1) translateY(-20px)

Duration: 0.4s ease
```

---

### Hotspot Pulse
```css
Animation: pulse 2s infinite
Transform: scale(1) → scale(1.5)
Opacity: 1 → 0.5
```

---

## 📐 Spacing & Layout

### Container Padding
```css
Desktop: 30px
Mobile: 20px
```

### Page Content
```css
Max-width: 500px
Padding: 0 60px (desktop)
Padding: 0 50px (mobile)
```

### Component Gaps
```css
Badge-Price Row: 15px gap
Ingredients Row: 8px gap
Hotspot Content: 8px gap
```

### Margins
```css
Title bottom: 15px
Badge-Price Row bottom: 15px
Ingredients bottom: 20px
```

---

## 🖼️ 3D Model Display

### Model Viewer Settings
```css
Width: 100%
Max-width: 600px
Height: 500px (desktop)
Height: 400px (mobile)
```

### Camera Settings
```css
camera-orbit: 45deg 65deg 105%
rotation-per-second: 20deg
auto-rotate: enabled
auto-rotate-delay: 0
```

**Why this angle?**
- 45° horizontal: Shows dish at appetizing angle
- 65° vertical: Top-down view (like looking at plate)
- 105% distance: Optimal zoom level

---

### Drop Shadow
```css
filter: drop-shadow(0 30px 50px rgba(255, 107, 53, 0.3))
```

---

## 🎯 Design Principles

### 1. **Dark & Premium**
- Black background creates luxury feel
- Orange accents pop against dark
- White text ensures readability

### 2. **Food-First**
- 3D models are hero elements
- Minimal UI distractions
- Generous white space around models

### 3. **Consistent Hierarchy**
```
1. 3D Model (largest, center)
2. Dish Title (bold, prominent)
3. Badge + Price (side-by-side, medium)
4. Ingredients (small, supporting)
5. AR Button (call-to-action)
```

### 4. **Smooth Interactions**
- All transitions: 0.2s - 0.6s
- Cubic-bezier easing for natural feel
- Cascade animations for elegance

### 5. **Mobile-First Responsive**
- Touch-friendly targets (40px+)
- Readable text on small screens
- Simplified layouts on mobile

---

## 📱 Responsive Breakpoints

### Mobile
```css
@media (max-width: 600px)
```

**Changes**:
- Smaller font sizes
- Reduced padding
- Smaller navigation buttons
- Compact ingredient tags

---

## ♿ Accessibility

### Color Contrast
- White on black: 21:1 (AAA)
- Orange on black: 4.5:1 (AA)
- Badge colors: Sufficient contrast

### Font Sizes
- Minimum: 9px (AR hotspot benefits)
- Body: 10px - 14px
- Headings: 20px - 28px

### Interactive Elements
- Minimum touch target: 40px × 40px
- Clear hover states
- Keyboard navigation support (model-viewer)

---

## 🎨 Usage Examples

### Primary CTA
```html
<button class="btn-ar">
  <svg>...</svg>
  <span>View on your table</span>
</button>
```
**When**: Main action (AR activation)
**Color**: Orange gradient
**Style**: Bold, uppercase, prominent

---

### Secondary Actions
```html
<button class="nav-btn">
  <i class="fas fa-chevron-left"></i>
</button>
```
**When**: Navigation
**Color**: Orange outline, transparent bg
**Style**: Minimal, circular

---

### Information Display
```html
<div class="badge-price-row">
  <span class="diet-badge veg">VEG</span>
  <span class="price">$12.95</span>
</div>
```
**When**: Showing dish metadata
**Layout**: Horizontal, centered
**Style**: Compact, clear

---

## 🚫 Don'ts

❌ **Don't** use colors other than the defined palette
❌ **Don't** use fonts other than Montserrat
❌ **Don't** make text smaller than 9px
❌ **Don't** use light backgrounds
❌ **Don't** overcrowd the interface
❌ **Don't** hide the 3D model
❌ **Don't** use harsh transitions
❌ **Don't** break the single-line title rule

---

## ✅ Do's

✅ **Do** maintain the dark, premium aesthetic
✅ **Do** use orange for CTAs and highlights
✅ **Do** keep animations smooth and subtle
✅ **Do** prioritize the 3D model
✅ **Do** use consistent spacing
✅ **Do** test on mobile devices
✅ **Do** maintain AR hotspot styling
✅ **Do** use the cascade animation pattern

---

## 📦 Component Library

### CSS Variables
```css
:root {
    --primary: #FF6B35;
    --primary-glow: rgba(255, 107, 53, 0.4);
    --accent: #E87A5D;
    --bg-dark: #050505;
    --text-main: #ffffff;
    --text-muted: rgba(255, 255, 255, 0.7);
}
```

### Reusable Classes
- `.dish-title` - Main heading
- `.price` - Price display
- `.diet-badge` - Veg/Non-Veg badge
- `.veg` / `.non-veg` - Badge modifiers
- `.ing-tag` - Ingredient tag
- `.btn-ar` - Primary CTA button
- `.nav-btn` - Navigation button
- `.hotspot` - AR annotation
- `.brand-tag` - Header branding

---

## 🎯 Brand Voice

### Tone
- **Enthusiastic** but not overwhelming
- **Premium** but approachable
- **Innovative** but user-friendly
- **Descriptive** but concise

### Example Copy
✅ "View on your table" (action-oriented)
✅ "MenuXR Collection" (premium, branded)
✅ "Chef's Special Pizza" (descriptive, appetizing)
✅ "Crispy Fried Chicken" (sensory, appealing)

❌ "Click here to see AR"
❌ "Menu items"
❌ "Pizza 1"
❌ "Chicken"

---

## 📊 Implementation Checklist

When creating new pages or components:

- [ ] Use Montserrat font
- [ ] Apply dark background (#050505)
- [ ] Use orange (#FF6B35) for primary actions
- [ ] Maintain 28px title size (desktop)
- [ ] Keep titles on single line
- [ ] Use badge-price horizontal layout
- [ ] Apply smooth transitions (0.2s - 0.6s)
- [ ] Add cascade animations
- [ ] Test on mobile (< 600px)
- [ ] Ensure touch targets ≥ 40px
- [ ] Use consistent spacing
- [ ] Apply drop shadows to 3D elements

---

## 🔗 Resources

### Fonts
- **Montserrat**: https://fonts.google.com/specimen/Montserrat
- **Font Awesome**: https://fontawesome.com/ (for icons)

### Tools
- **Color Picker**: Use exact hex values
- **Contrast Checker**: WebAIM Contrast Checker
- **Model Viewer**: https://modelviewer.dev/

---

## 📄 Version History

**Version 1.0** - February 2026
- Initial branding guidelines
- 21 menu items
- Orange primary color
- Montserrat typography
- Dark premium theme

---

## 📞 Contact

For questions about brand usage or guidelines:
- Project: MenuXR Interactive AR Menu
- Repository: hritikoptiumbrew/ar_page

---

**Remember**: Consistency is key. These guidelines ensure MenuXR maintains a premium, cohesive brand experience across all touchpoints.
