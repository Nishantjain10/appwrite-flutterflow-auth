#!/bin/bash

# Ensure the environment variables are set
if [[ -z "$APPWRITE_PROJECT_ID" ]]; then
  echo "Error: APPWRITE_PROJECT_ID is not set."
  exit 1
fi

# Create a copy of environment.json and replace placeholders
cp assets/environment_values/environment.json assets/environment_values/environment_temp.json

sed -i "s|\$APPWRITE_PROJECT_ID|$APPWRITE_PROJECT_ID|g" assets/environment_values/environment_temp.json

# Build Flutter Web App with environment variables
flutter build web \
  --dart-define=APPWRITE_PROJECT_ID="$APPWRITE_PROJECT_ID" \
  --dart-define=APPWRITE_PROJECT_NAME="$APPWRITE_PROJECT_NAME" \
  --dart-define=APPWRITE_PUBLIC_ENDPOINT="$APPWRITE_PUBLIC_ENDPOINT"

# Remove temporary file after the build
rm assets/environment_values/environment_temp.json
