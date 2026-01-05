FROM n8nio/n8n:latest

# Explicitly expose port 5678
EXPOSE 5678

# Health check for Render
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:5678/healthz || exit 1
