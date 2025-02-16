#!/bin/sh

# Kiểm tra xem biến môi trường có được thiết lập không
if [ -z "$UNITY_LICENSE" ]; then
  echo "❌ ERROR: UNITY_LICENSE không được thiết lập!"
  exit 1
fi

echo "🚀 Kích hoạt Unity License..."
echo "$UNITY_LICENSE" > /root/.local/share/unity3d/Unity/Unity_lic.ulf

# Chạy Unity để build project
echo "🏗 Bắt đầu build Unity..."
/opt/unity/Editor/Unity \
  -batchmode \
  -nographics \
  -logFile /dev/stdout \
  -projectPath "$INPUT_PROJECT_PATH" \
  -buildTarget "$INPUT_BUILD_TARGET" \
  -outputPath "$INPUT_OUTPUT_PATH" \
  -quit

echo "✅ Build hoàn tất!"
