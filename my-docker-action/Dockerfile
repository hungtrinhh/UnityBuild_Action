FROM ubuntu:latest

# Cài đặt dependencies nếu cần
RUN apt-get update && apt-get install -y curl

# Copy script vào container
COPY entrypoint.sh /entrypoint.sh

# Cấp quyền thực thi
RUN chmod +x entrypoint.sh

# Chạy script
ENTRYPOINT ["sh", "/entrypoint.sh"]
