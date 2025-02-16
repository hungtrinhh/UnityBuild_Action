# Sử dụng đúng phiên bản Unity phù hợp với dự án
FROM unityci/editor:2021.3.18f1-base-0

# Cài đặt dependencies nếu cần
RUN apt-get update && apt-get install -y curl xvfb

# Copy script vào container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Chạy script chính
ENTRYPOINT ["sh", "/entrypoint.sh"]
