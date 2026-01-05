FROM n8nio/n8n:latest

# Explicitly expose port 5678 (n8n's default)
EXPOSE 5678

# Use shell form for CMD to ensure proper signal handling
CMD ["n8n", "start", "--tunnel=false"]
