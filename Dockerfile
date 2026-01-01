FROM node:18-alpine

# Cài Honeygain
RUN apk add --no-cache curl && \
    curl -o /usr/local/bin/honeygain \
    https://download.honeygain.com/linux-arm64/honeygain && \
    chmod +x /usr/local/bin/honeygain

# Copy ping script
COPY ping.js /app/ping.js

WORKDIR /app

# Start both
CMD node ping.js & \
    /usr/local/bin/honeygain \
    -tou-accept \
    -email truongnam2a1@gmail.com \
    -pass 0363154339 \
    -device render-vps
