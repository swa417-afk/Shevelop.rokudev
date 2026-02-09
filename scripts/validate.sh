#!/bin/bash

# Pre-commit validation script for XML and BrightScript syntax

# Function to validate XML syntax
echo "Validating XML syntax..."
for file in *.xml; do
    if ! xmllint --noout "$file"; then
        echo "XML validation failed for $file"
        exit 1
    fi
done

echo "All XML files validated successfully."


# Function to validate BrightScript syntax
echo "Validating BrightScript syntax..."
for file in *.brs; do
    if ! brightscript -C "$file"; then
        echo "BrightScript validation failed for $file"
        exit 1
    fi
done

echo "All BrightScript files validated successfully.
"