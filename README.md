# Augmented Reality Model Viewer (POC)

A simple, lightweight proof-of-concept for viewing 3D models in Augmented Reality (AR) using Google's `<model-viewer>`.

## Project Structure
- `index.html`: The main AR viewer page.
- `menu.html`: A menu page listing all available models.
- `models/`: Folder containing all 3D model files (`.glb` for Android/Web, `.usdz` for iOS).

## How to Add New Models
1.  Upload your 3D model files to the `models/` folder.
2.  Ensure you have both `.glb` and `.usdz` versions with the **same filename** (e.g., `myModel.glb` and `myModel.usdz`).
3.  Access the model by adding the `model` parameter to the URL:
    - `index.html?model=myModel`

## Local Development
1.  Serve the project using a local web server:
    - `python3 -m http.server 8081`
2.  Open in browser:
    - `http://localhost:8081/menu.html` (Menu)
    - `http://localhost:8081/index.html?model=vegBurger` (Direct Viewer)

## Features
- **Cross-Platform AR**: Supports WebXR (Android/Chrome) and Quick Look (iOS/Safari).
- **Dynamic Loading**: Loads models based on URL parameters.
- **Glassmorphic UI**: Modern, clean design for the menu and viewer.