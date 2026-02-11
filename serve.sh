#!/bin/bash
# Serve index.html and Photos so the gallery can load images.
# Then open: http://localhost:8000/index.html
cd "$(dirname "$0")"
echo "Serving. Open http://localhost:8000/index.html in your browser."
python3 -m http.server 8000
