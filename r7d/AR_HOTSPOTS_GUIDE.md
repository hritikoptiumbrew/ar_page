# AR Hotspot Annotations - How It Works

## Overview
The R7D menu viewer now includes **AR hotspot annotations** that appear as floating labels around the 3D model when viewed in AR, just like the 4D Menu example!

## What Are AR Hotspots?

AR hotspots are **HTML annotations** that are attached to specific **3D coordinates** on your model. When you view the model in AR:
- The labels follow the model as you move around it
- They stay positioned at their assigned 3D coordinates
- They show ingredient names and health benefits
- Each has a colored icon matching the ingredient

## How It's Implemented

### 1. **Hotspot Data Structure**

Each ingredient now has additional properties:

```javascript
{
    name: "Tomato",
    color: "#ff6b6b",
    benefit: "Vitamin C",           // NEW: Health benefit
    position: "0.2m 0.1m 0.15m",    // NEW: 3D position (x y z)
    normal: "0 1 0"                 // NEW: Surface normal
}
```

### 2. **3D Position Format**

The `position` attribute uses **meters** in 3D space:
- Format: `"x y z"` (e.g., `"0.2m 0.1m 0.15m"`)
- **X**: Left (-) to Right (+)
- **Y**: Down (-) to Up (+)
- **Z**: Back (-) to Front (+)
- Center of model is `"0m 0m 0m"`

### 3. **Creating Hotspots**

The `createHotspots()` function dynamically creates HTML elements:

```javascript
function createHotspots(item) {
    item.ingredients.forEach((ing, index) => {
        const hotspot = document.createElement('button');
        hotspot.className = 'hotspot';
        hotspot.slot = `hotspot-${index + 1}`;  // Unique slot name
        hotspot.setAttribute('data-position', ing.position);
        hotspot.setAttribute('data-normal', ing.normal);
        
        // Add content with icon and text
        hotspot.innerHTML = `...`;
        
        dishModel.appendChild(hotspot);
    });
}
```

### 4. **Hotspot HTML Structure**

Each hotspot contains:

```html
<button class="hotspot" 
        slot="hotspot-1" 
        data-position="0.2m 0.1m 0.15m" 
        data-normal="0 1 0">
    <div class="hotspot-content">
        <div class="hotspot-icon" style="background: #ff6b6b;">
            <i class="fas fa-leaf"></i>
        </div>
        <div class="hotspot-text">
            <div class="hotspot-name">Tomato</div>
            <div class="hotspot-benefit">● Vitamin C</div>
        </div>
    </div>
</button>
```

### 5. **Styling**

Hotspots have:
- **Dark background** with blur: `rgba(0, 0, 0, 0.85)` + `backdrop-filter: blur(10px)`
- **Colored icon** matching ingredient color
- **Pulsing dot** animation behind the label
- **Responsive sizing** for mobile devices

```css
.hotspot {
    background: rgba(0, 0, 0, 0.85);
    backdrop-filter: blur(10px);
    padding: 8px 14px;
    border-radius: 8px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.4);
}

.hotspot::before {
    /* Pulsing dot */
    background: var(--hotspot-color);
    animation: pulse 2s infinite;
}
```

## How to Position Hotspots

### Finding the Right Coordinates

1. **Start with center**: `"0m 0m 0m"`
2. **Adjust X** (left/right):
   - Negative = left (e.g., `"-0.2m"`)
   - Positive = right (e.g., `"0.2m"`)
3. **Adjust Y** (up/down):
   - Negative = down (e.g., `"-0.1m"`)
   - Positive = up (e.g., `"0.15m"`)
4. **Adjust Z** (front/back):
   - Negative = back (e.g., `"-0.15m"`)
   - Positive = front (e.g., `"0.1m"`)

### Example Positions for Pizza

```javascript
ingredients: [
    { 
        name: "Tomato", 
        position: "0.2m 0.1m 0.15m",  // Right, slightly up, front
        // ...
    },
    { 
        name: "Basil", 
        position: "-0.15m 0.12m 0.1m", // Left, up, front
        // ...
    },
    { 
        name: "Mozzarella", 
        position: "0m 0.15m 0m",       // Center, top
        // ...
    }
]
```

### Tips for Positioning

1. **Spread them out**: Don't cluster all hotspots in one area
2. **Use different heights**: Vary the Y coordinate for visual interest
3. **Consider viewing angle**: Position for the default camera orbit
4. **Test in AR**: The best way to verify positions is to test on a real device
5. **Scale matters**: Adjust based on your model's size

## Surface Normal

The `normal` attribute defines which direction the hotspot "faces":

```javascript
normal: "0 1 0"  // Points upward (most common)
normal: "1 0 0"  // Points right
normal: "0 0 1"  // Points forward
```

For most food models, `"0 1 0"` (upward) works best.

## Customizing Hotspots

### Change Icon

Replace the Font Awesome icon:

```html
<i class="fas fa-leaf"></i>      <!-- Current -->
<i class="fas fa-check"></i>     <!-- Checkmark -->
<i class="fas fa-star"></i>      <!-- Star -->
<i class="fas fa-heart"></i>     <!-- Heart -->
```

### Add More Information

Extend the data structure:

```javascript
{
    name: "Tomato",
    color: "#ff6b6b",
    benefit: "Vitamin C",
    calories: "18 cal",     // NEW
    allergen: false         // NEW
}
```

Then update the HTML:

```html
<div class="hotspot-benefit">● ${ing.benefit}</div>
<div class="hotspot-calories">${ing.calories}</div>
```

### Change Colors

Each hotspot uses CSS custom properties:

```javascript
hotspot.style.setProperty('--hotspot-color', ing.color);
```

You can add more:

```javascript
hotspot.style.setProperty('--hotspot-bg', 'rgba(0, 0, 0, 0.9)');
hotspot.style.setProperty('--hotspot-text', '#ffffff');
```

## AR Behavior

### In Browser (3D View)
- Hotspots are **hidden** by default
- They appear when you interact with the model
- Positioned in 3D space around the model

### In AR Mode
- Hotspots **automatically appear**
- They follow the model in real space
- Users can walk around and see labels from all angles
- Labels stay at their 3D coordinates

## Browser Compatibility

- ✅ **iOS (Safari)**: Quick Look AR with hotspots
- ✅ **Android (Chrome)**: Scene Viewer AR with hotspots
- ✅ **Desktop**: Hotspots visible in 3D viewer
- ✅ **WebXR**: Full support for AR hotspots

## Performance Tips

1. **Limit hotspots**: 5-7 per model is ideal
2. **Simple HTML**: Keep hotspot content lightweight
3. **Optimize CSS**: Use `will-change` sparingly
4. **Test on device**: AR performance varies by device

## Example: Adding a New Dish

```javascript
{
    id: 'burger',
    title: "Classic Burger",
    price: "$12.95",
    type: "Non-Veg",
    model: "burger.glb",
    usdz: "burger.usdz",
    ingredients: [
        { 
            name: "Beef Patty", 
            color: "#8b4513", 
            benefit: "Protein",
            position: "0m 0.08m 0m",
            normal: "0 1 0"
        },
        { 
            name: "Lettuce", 
            color: "#4ade80", 
            benefit: "Fiber",
            position: "0.12m 0.15m 0.08m",
            normal: "0 1 0"
        },
        { 
            name: "Tomato", 
            color: "#ff6b6b", 
            benefit: "Vitamin C",
            position: "-0.12m 0.12m 0.08m",
            normal: "0 1 0"
        },
        { 
            name: "Cheese", 
            color: "#fef3c7", 
            benefit: "Calcium",
            position: "0m 0.1m 0.15m",
            normal: "0 1 0"
        },
        { 
            name: "Bun", 
            color: "#d4a574", 
            benefit: "Carbs",
            position: "0m 0.2m 0m",
            normal: "0 1 0"
        }
    ]
}
```

## Debugging Hotspots

### Check if hotspots are created:

```javascript
console.log(dishModel.querySelectorAll('.hotspot').length);
```

### Verify positions:

```javascript
dishModel.querySelectorAll('.hotspot').forEach(h => {
    console.log(h.getAttribute('data-position'));
});
```

### Test visibility:

```javascript
// Hotspots should have data-visible attribute in AR
dishModel.querySelectorAll('.hotspot[data-visible]').length;
```

## Advanced: Dynamic Positioning

For more control, you can calculate positions programmatically:

```javascript
function calculateHotspotPosition(angle, radius, height) {
    const x = Math.cos(angle) * radius;
    const z = Math.sin(angle) * radius;
    return `${x}m ${height}m ${z}m`;
}

// Distribute hotspots in a circle
const numIngredients = 5;
ingredients.forEach((ing, i) => {
    const angle = (i / numIngredients) * Math.PI * 2;
    ing.position = calculateHotspotPosition(angle, 0.15, 0.1);
});
```

## Summary

AR hotspots transform your menu viewer into an **educational AR experience**:

1. **Define positions** in 3D space for each ingredient
2. **Create hotspot elements** dynamically with `createHotspots()`
3. **Style with CSS** for a premium look
4. **Test in AR** on real devices
5. **Adjust positions** based on your model

The result: **Interactive AR labels** that help customers understand what's in their food, just like the 4D Menu example!

---

**Pro Tip**: Start with approximate positions, then fine-tune by testing in AR on your phone. The positions might need adjustment based on your specific 3D models.
