#!/bin/bash

echo "Updating HTML files to use obfuscated JavaScript..."

# Update all HTML files to use obfuscated JS files
for file in *.html; do
    echo "Updating $file..."
    
    # Replace script references with obfuscated versions
    sed -i 's|<script src="assets/js/settings.js"></script>|<script src="assets/js/obfuscated/sisiwbsja1298.js"></script>|g' "$file"
    sed -i 's|<script src="assets/js/main.js"></script>|<script src="assets/js/obfuscated/kdjfhg8392.js"></script>|g' "$file"
    sed -i 's|<script src="assets/js/animations.js"></script>|<script src="assets/js/obfuscated/mnbvcx7456.js"></script>|g' "$file"
    sed -i 's|<script src="assets/js/components.js"></script>|<script src="assets/js/obfuscated/qwerty9876.js"></script>|g' "$file"
    sed -i 's|<script src="assets/js/image-optimization.js"></script>|<script src="assets/js/obfuscated/zxcvbn5432.js"></script>|g' "$file"
    sed -i 's|<script src="assets/js/enhanced-features.js"></script>|<script src="assets/js/obfuscated/asdfgh1234.js"></script>|g' "$file"
done

echo "HTML files updated successfully!"
echo "All JavaScript files are now obfuscated with random names."

