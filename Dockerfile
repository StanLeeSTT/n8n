FROM n8nio/n8n:latest

# Expose the port n8n runs on
EXPOSE 5678

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=40s --retries=3 \
  CMD curl -f http://localhost:5678/healthz || exit 1

# Start command
CMD ["n8n", "start"]
