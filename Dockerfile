FROM honeygain/honeygain:latest

# Keep container alive with healthcheck
HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
  CMD exit 0

# Honeygain credentials
CMD ["-tou-accept", \
     "-email", "truongnam2a1@gmail.com", \
     "-pass", "0363154339", \
     "-device", "render-vps"]
