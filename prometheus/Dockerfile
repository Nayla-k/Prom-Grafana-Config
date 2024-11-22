FROM prom/prometheus:latest

# Copy the Prometheus configuration file
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Set the arguments for Prometheus (e.g., 365 days retention)
CMD ["--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.retention.time=365d"]

# Expose Prometheus port
EXPOSE 9090
