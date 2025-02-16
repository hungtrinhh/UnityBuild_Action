FROM unityci/editor:2021.3.18f1-linux-il2cpp

# Cài đặt dependencies nếu cần
RUN apt-get update && apt-get install -y curl xvfb

# Copy script vào container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Chạy script
ENTRYPOINT ["sh", "/entrypoint.sh"]
