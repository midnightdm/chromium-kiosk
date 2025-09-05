FROM debian:bookworm

# Install dependencies
RUN apt update && apt install -y \
  chromium \
  x11-utils \
  x11-xserver-utils \
  libx11-dev \
  libxcomposite1 \
  libxdamage1 \
  libxrandr2 \
  libgtk-3-0 \
  libnss3 \
  libasound2 \
  libxss1 \
  libxtst6 \
  libva-drm2 \
  libva-x11-2 \
  libva2 \
  fonts-liberation \
  --no-install-recommends && \
  apt clean && rm -rf /var/lib/apt/lists/*

# Set environment
ENV DISPLAY=:0

# Add entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]