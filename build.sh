#!/bin/bash

# Replace placeholders in environment.json with actual values
sed -i "s|\$APPWRITE_PROJECT_ID|$APPWRITE_PROJECT_ID|g" assets/environment_values/environment.json

# Build Flutter web app with environment variables
flutter build web \
  --dart-define=APPWRITE_PROJECT_ID="$APPWRITE_PROJECT_ID" \
  --dart-define=APPWRITE_PROJECT_NAME="$APPWRITE_PROJECT_NAME" \
  --dart-define=APPWRITE_PUBLIC_ENDPOINT="$APPWRITE_PUBLIC_ENDPOINT"
