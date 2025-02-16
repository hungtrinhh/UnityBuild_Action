FROM unityci/editor:2020.1.14f1-base-0

# Cài đặt dependencies nếu cần
RUN apt-get update && apt-get install -y curl xvfb

# Copy script vào container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Chạy script
ENTRYPOINT ["sh", "/entrypoint.sh"]
