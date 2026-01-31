#!/bin/bash

# R7D Menu Viewer - Local Server Launcher
# This script starts a local web server for the R7D project

echo "🌟 Starting R7D Signature Menu Collection..."
echo ""

# Check if we're in the r7d directory
if [ ! -f "index.html" ]; then
    echo "❌ Error: index.html not found"
    echo "Please run this script from the r7d/ directory"
    echo ""
    echo "Usage:"
    echo "  cd r7d"
    echo "  ./start.sh"
    exit 1
fi

# Get the port (default 8080)
PORT=${1:-8080}

echo "📂 Project: R7D Signature Menu Collection"
echo "📍 Location: $(pwd)"
echo "🌐 Port: $PORT"
echo ""
echo "🚀 Starting server..."
echo ""

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    echo "✅ Using Python 3"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "  🎉 Server is running!"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "  📱 Open in browser:"
    echo "     http://localhost:$PORT"
    echo ""
    echo "  🛑 Stop server: Press Ctrl+C"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    
    # Start the server
    python3 -m http.server $PORT
    
elif command -v python &> /dev/null; then
    echo "✅ Using Python 2"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo "  🎉 Server is running!"
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    echo "  📱 Open in browser:"
    echo "     http://localhost:$PORT"
    echo ""
    echo "  🛑 Stop server: Press Ctrl+C"
    echo ""
    echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo ""
    
    # Start the server
    python -m SimpleHTTPServer $PORT
    
else
    echo "❌ Error: Python not found"
    echo ""
    echo "Please install Python to run the local server:"
    echo "  https://www.python.org/downloads/"
    echo ""
    echo "Alternative: Use any other local server:"
    echo "  - VS Code Live Server extension"
    echo "  - Node.js http-server: npm install -g http-server"
    echo "  - PHP: php -S localhost:8080"
    exit 1
fi
