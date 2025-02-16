#!/bin/sh -l

UNITY_VERSION=$1
PROJECT_PATH=$2
BUILD_TARGET=$3
OUTPUT_PATH=$4

echo "Building Unity project..."
echo "Unity Version: $UNITY_VERSION"
echo "Project Path: $PROJECT_PATH"
echo "Build Target: $BUILD_TARGET"
echo "Output Path: $OUTPUT_PATH"

# Chạy Unity build
/opt/unity/Editor/Unity \
  -batchmode \
  -nographics \
  -quit \
  -projectPath "$PROJECT_PATH" \
  -buildTarget "$BUILD_TARGET" \
  -executeMethod BuildScript.PerformBuild \
  -logFile /dev/stdout

# Kiểm tra lỗi
if [ $? -eq 0 ]; then
  echo "Unity Build Completed Successfully!"
else
  echo "Unity Build Failed!" >&2
  exit 1
fi
