#!/bin/bash

# Generate random filenames for obfuscated JS files
SETTINGS_OBFUSCATED="sisiwbsja1298.js"
MAIN_OBFUSCATED="kdjfhg8392.js"
ANIMATIONS_OBFUSCATED="mnbvcx7456.js"
COMPONENTS_OBFUSCATED="qwerty9876.js"
IMAGE_OPT_OBFUSCATED="zxcvbn5432.js"
ENHANCED_OBFUSCATED="asdfgh1234.js"

echo "Obfuscating JavaScript files..."

# Obfuscate settings.js
javascript-obfuscator assets/js/settings.js \
  --output assets/js/obfuscated/$SETTINGS_OBFUSCATED \
  --compact true \
  --control-flow-flattening true \
  --control-flow-flattening-threshold 0.75 \
  --dead-code-injection true \
  --dead-code-injection-threshold 0.4 \
  --debug-protection false \
  --disable-console-output true \
  --identifier-names-generator hexadecimal \
  --self-defending true \
  --string-array true \
  --string-array-encoding base64 \
  --string-array-threshold 0.75 \
  --transform-object-keys true

# Obfuscate main.js
javascript-obfuscator assets/js/main.js \
  --output assets/js/obfuscated/$MAIN_OBFUSCATED \
  --compact true \
  --control-flow-flattening true \
  --control-flow-flattening-threshold 0.75 \
  --dead-code-injection true \
  --dead-code-injection-threshold 0.4 \
  --debug-protection false \
  --disable-console-output true \
  --identifier-names-generator hexadecimal \
  --self-defending true \
  --string-array true \
  --string-array-encoding base64 \
  --string-array-threshold 0.75 \
  --transform-object-keys true

# Obfuscate animations.js
javascript-obfuscator assets/js/animations.js \
  --output assets/js/obfuscated/$ANIMATIONS_OBFUSCATED \
  --compact true \
  --control-flow-flattening true \
  --control-flow-flattening-threshold 0.75 \
  --dead-code-injection true \
  --dead-code-injection-threshold 0.4 \
  --debug-protection false \
  --disable-console-output true \
  --identifier-names-generator hexadecimal \
  --self-defending true \
  --string-array true \
  --string-array-encoding base64 \
  --string-array-threshold 0.75 \
  --transform-object-keys true

# Obfuscate components.js
javascript-obfuscator assets/js/components.js \
  --output assets/js/obfuscated/$COMPONENTS_OBFUSCATED \
  --compact true \
  --control-flow-flattening true \
  --control-flow-flattening-threshold 0.75 \
  --dead-code-injection true \
  --dead-code-injection-threshold 0.4 \
  --debug-protection false \
  --disable-console-output true \
  --identifier-names-generator hexadecimal \
  --self-defending true \
  --string-array true \
  --string-array-encoding base64 \
  --string-array-threshold 0.75 \
  --transform-object-keys true

# Obfuscate image-optimization.js
javascript-obfuscator assets/js/image-optimization.js \
  --output assets/js/obfuscated/$IMAGE_OPT_OBFUSCATED \
  --compact true \
  --control-flow-flattening true \
  --control-flow-flattening-threshold 0.75 \
  --dead-code-injection true \
  --dead-code-injection-threshold 0.4 \
  --debug-protection false \
  --disable-console-output true \
  --identifier-names-generator hexadecimal \
  --self-defending true \
  --string-array true \
  --string-array-encoding base64 \
  --string-array-threshold 0.75 \
  --transform-object-keys true

# Obfuscate enhanced-features.js (if it exists, otherwise skip)
if [ -f "assets/js/enhanced-features.js" ]; then
    javascript-obfuscator assets/js/enhanced-features.js \
      --output assets/js/obfuscated/$ENHANCED_OBFUSCATED \
      --compact true \
      --control-flow-flattening true \
      --control-flow-flattening-threshold 0.75 \
      --dead-code-injection true \
      --dead-code-injection-threshold 0.4 \
      --debug-protection false \
      --disable-console-output true \
      --identifier-names-generator hexadecimal \
      --self-defending true \
      --string-array true \
      --string-array-encoding base64 \
      --string-array-threshold 0.75 \
      --transform-object-keys true
fi

echo "JavaScript obfuscation completed!"
echo "Obfuscated files:"
echo "- settings.js -> $SETTINGS_OBFUSCATED"
echo "- main.js -> $MAIN_OBFUSCATED"
echo "- animations.js -> $ANIMATIONS_OBFUSCATED"
echo "- components.js -> $COMPONENTS_OBFUSCATED"
echo "- image-optimization.js -> $IMAGE_OPT_OBFUSCATED"
if [ -f "assets/js/enhanced-features.js" ]; then
    echo "- enhanced-features.js -> $ENHANCED_OBFUSCATED"
fi

# Create mapping file for reference
cat > assets/js/obfuscated/file-mapping.json << EOF
{
  "settings.js": "$SETTINGS_OBFUSCATED",
  "main.js": "$MAIN_OBFUSCATED",
  "animations.js": "$ANIMATIONS_OBFUSCATED",
  "components.js": "$COMPONENTS_OBFUSCATED",
  "image-optimization.js": "$IMAGE_OPT_OBFUSCATED",
  "enhanced-features.js": "$ENHANCED_OBFUSCATED"
}
EOF

echo "File mapping saved to assets/js/obfuscated/file-mapping.json"

