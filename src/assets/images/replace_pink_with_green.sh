#!/bin/bash

# Input SVG file
INPUT_SVG="$1"

# Output SVG file (optional second argument)
OUTPUT_SVG="${2:-output.svg}"

# Declare color replacements (from pinks to greens)
declare -A color_map=(
    ["#F1B9CD"]="#A8E6A1"
    ["#F25C8B"]="#4CAF50"
    ["#AF3F5F"]="#388E3C"
    ["#F4BFD0"]="#AED581"
    ["#E0A9BD"]="#81C784"
    ["#E2A6BC"]="#66BB6A"
    ["#F06A93"]="#43A047"
    ["#F36D96"]="#689F38"
    ["#ECA5BD"]="#8BC34A"
    ["#ED618C"]="#2E7D32"
    ["#E5BCCB"]="#9CCC65"
)

# Copy input to output file
cp "$INPUT_SVG" "$OUTPUT_SVG"

# Loop over color_map and replace
for old_color in "${!color_map[@]}"; do
    new_color="${color_map[$old_color]}"
    sed -i "s/$old_color/$new_color/g" "$OUTPUT_SVG"
done

echo "✅ Color replacement complete. Output saved to: $OUTPUT_SVG"
