# Model Files - Renamed and Organized

## ✅ Files Renamed Successfully

All model files have been renamed to clean, web-friendly names without spaces or special characters.

---

## 📁 Renamed Files

### Before → After

| Original Name | New Name | Type |
|--------------|----------|------|
| `croissant+coffee+3d+model.glb` | `croissantCoffee.glb` | Breakfast |
| `croissant+coffee+3d+model.usdz` | `croissantCoffee.usdz` | Breakfast |
| `dumplings+3d+model.glb` | `dumplings.glb` | Asian |
| `dumplings+3d+model.usdz` | `dumplings.usdz` | Asian |
| `dumplings+3d+model (1).glb` | `dumplingsAlt.glb` | Asian |
| `dumplings+3d+model (1).usdz` | `dumplingsAlt.usdz` | Asian |
| `french+fries+3d+model.glb` | `frenchFriesLarge.glb` | Sides |
| `hot+dog+3d+model.glb` | `hotDog.glb` | Fast Food |
| `hot+dog+3d+model.usdz` | `hotDog.usdz` | Fast Food |
| `milkshake+3d+model.glb` | `milkshake.glb` | Beverage |
| `milkshake+3d+model.usdz` | `milkshake.usdz` | Beverage |

---

## 📦 Available Models (All Files)

### Fast Food
- ✅ `burger.glb` / `burger.usdz` - Chicken Burger (2.6 MB / 5.2 MB)
- ✅ `vegBurger.glb` / `vegBurger.usdz` - Vegetarian Burger (2.6 MB / 5.1 MB)
- ✅ `hotDog.glb` / `hotDog.usdz` - Hot Dog (29.7 MB / 45.3 MB)
- ✅ `friedChickenSandwich.glb` / `friedChickenSandwich.usdz` - Chicken Sandwich (1.4 MB / 35.0 MB)

### Sides & Snacks
- ✅ `fries.glb` / `fries.usdz` - French Fries (3.0 MB / 5.8 MB)
- ✅ `frenchFriesLarge.glb` - French Fries Large (25.6 MB)
- ✅ `friedChicken.glb` / `friedChicken.usdz` - Fried Chicken (3.3 MB / 5.8 MB)

### Main Dishes
- ✅ `pizza.glb` / `pizza.usdz` - Pizza (2.7 MB / 6.5 MB)
- ✅ `pizzaSpecial.glb` / `pizzaSpecial.usdz` - Special Pizza (1.4 MB / 34.3 MB)
- ✅ `pasta.glb` / `pasta.usdz` - Pasta (3.1 MB / 5.8 MB)
- ✅ `taco.glb` / `taco.usdz` - Taco (1.6 MB / 35.7 MB)

### Asian Cuisine
- ✅ `hakkaNoodles.glb` / `hakkaNoodles.usdz` - Hakka Noodles (2.9 MB / 6.5 MB)
- ✅ `momos.glb` / `momos.usdz` - Momos (2.7 MB / 5.3 MB)
- ✅ `dumplings.glb` / `dumplings.usdz` - Dumplings (22.1 MB / 35.0 MB)
- ✅ `dumplingsAlt.glb` / `dumplingsAlt.usdz` - Dumplings Alt (21.9 MB / 34.6 MB)
- ✅ `rolls.glb` / `rolls.usdz` - Rolls (2.5 MB / 5.0 MB)

### Desserts & Beverages
- ✅ `cake.glb` / `cake.usdz` - Strawberry Cheesecake (1.4 MB / 34.8 MB)
- ✅ `milkshake.glb` / `milkshake.usdz` - Milkshake (24.0 MB / 38.2 MB)
- ✅ `croissantCoffee.glb` / `croissantCoffee.usdz` - Croissant & Coffee (24.6 MB / 37.8 MB)

### Other
- ⚠️ `sandwich.glb` - Sandwich (2 bytes - corrupted file)
- ✅ `sandwich.usdz` - Sandwich (5.7 MB)

---

## 📋 Models Copied to R7D Folder

The following models have been copied to `/r7d/` for the signature menu:

| Item | GLB | USDZ | PNG | Size |
|------|-----|------|-----|------|
| **Pizza** | ✅ | ✅ | ✅ | 2.7 MB |
| **Salad** | ✅ | ✅ | ✅ | 3.1 MB |
| **Burger** | ✅ | ✅ | ✅ | 2.6 MB |
| **Fries** | ✅ | ✅ | ✅ | 3.0 MB |
| **Taco** | ✅ | ✅ | ✅ | 1.6 MB |
| **Cake** | ✅ | ✅ | ✅ | 1.4 MB |

---

## 🎯 Naming Convention

All files now follow this pattern:

```
[itemName].glb      # Android AR model
[itemName].usdz     # iOS AR model
[itemName].png      # Display image
```

### Examples:
- `burger.glb`, `burger.usdz`, `burger.png`
- `fries.glb`, `fries.usdz`, `fries.png`
- `croissantCoffee.glb`, `croissantCoffee.usdz`

### Rules:
- ✅ **camelCase** for multi-word names
- ✅ **No spaces** or special characters
- ✅ **Lowercase** first letter
- ✅ **Descriptive** but concise
- ✅ **Consistent** across GLB/USDZ/PNG

---

## 📊 File Size Categories

### Small (< 5 MB)
Perfect for quick loading:
- burger, vegBurger, fries, friedChicken
- pizza, pasta, taco, cake
- momos, rolls, hakkaNoodles

### Medium (5-10 MB)
Good for most uses:
- All USDZ files in this range

### Large (> 20 MB)
Use sparingly, may load slowly:
- dumplings, dumplingsAlt
- milkshake, croissantCoffee
- hotDog, frenchFriesLarge

---

## 🚀 How to Add to R7D Menu

### 1. Copy Files
```bash
cp models/[itemName].glb r7d/[itemName].glb
cp models/[itemName].usdz r7d/[itemName].usdz
cp assets/[itemName].png r7d/[itemName].png
```

### 2. Add to Menu Data
Edit `r7d/index.html`:

```javascript
{
    id: 'burger',
    title: "Classic Chicken Burger",
    price: "$12.95",
    type: "Non-Veg",
    model: "burger.glb",
    usdz: "burger.usdz",
    ingredients: [
        { 
            name: "Chicken Patty", 
            color: "#fdba74", 
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
        // ... more ingredients
    ]
}
```

---

## ⚠️ Known Issues

### Corrupted File
- `sandwich.glb` is only 2 bytes (corrupted)
- `sandwich.usdz` is fine (5.7 MB)
- **Solution**: Re-download or recreate the GLB file

### Large Files
Some models are very large (> 20 MB):
- May load slowly on mobile
- Consider optimizing with tools like:
  - [glTF-Transform](https://gltf-transform.donmccurdy.com/)
  - [Blender](https://www.blender.org/) (reduce polygons)
  - [Draco compression](https://github.com/google/draco)

---

## 📱 Optimization Tips

### For Better Performance:

1. **Compress Large Models**
   ```bash
   # Use glTF-Transform
   gltf-transform optimize input.glb output.glb
   ```

2. **Reduce Polygon Count**
   - Open in Blender
   - Use "Decimate" modifier
   - Export with lower quality

3. **Use Draco Compression**
   - Reduces file size by 50-90%
   - Supported by model-viewer

4. **Optimize Textures**
   - Resize to 1024x1024 or smaller
   - Use JPEG instead of PNG for non-transparent textures
   - Compress with tools like TinyPNG

---

## 🎨 Available Images

From `/assets/` folder:

- ✅ `burger.png` (621 KB)
- ✅ `cake.png` (652 KB)
- ✅ `fries.png` (724 KB)
- ✅ `pasta.png` (783 KB)
- ✅ `pizza.png` (1.0 MB)
- ✅ `taco.png` (796 KB)

**Missing images for:**
- Croissant & Coffee
- Dumplings
- Hot Dog
- Milkshake
- Noodles
- Momos
- Rolls
- Fried Chicken
- Sandwiches

---

## 📝 Next Steps

1. ✅ **Files Renamed** - All models have clean names
2. ✅ **Models Copied** - 6 items ready in r7d folder
3. ⏳ **Add to Menu** - Update index.html with new items
4. ⏳ **Create Images** - Add missing PNG images
5. ⏳ **Test Models** - Verify all models load correctly
6. ⏳ **Optimize Large Files** - Compress models > 20 MB

---

## 🎯 Recommended Menu Items

Based on file size and availability:

### Signature Collection (Current)
1. ✅ Pizza - Italian Supreme
2. ✅ Salad - Grilled Chicken

### Expanded Menu (Add These)
3. ✅ Burger - Classic Chicken Burger
4. ✅ Fries - Golden French Fries
5. ✅ Taco - Mexican Street Taco
6. ✅ Cake - Strawberry Cheesecake

### Future Additions
7. Momos - Steamed Dumplings
8. Noodles - Hakka Style
9. Fried Chicken - Crispy Wings
10. Milkshake - Chocolate Dream

---

**All files are now properly named and ready to use!** 🎉
