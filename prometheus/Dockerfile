FROM prom/prometheus:latest

# Copy the configuration file for Prometheus
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Add the retention flag to increase retention period (e.g., 365 days = 1 year)
CMD ["/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.retention.time=365d"]

# Expose Prometheus port
EXPOSE 9090
