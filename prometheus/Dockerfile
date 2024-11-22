FROM prom/prometheus:latest

# Copy the Prometheus configuration file
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Set the command to start Prometheus with retention time flag (1 year retention in this case)
CMD ["/bin/prometheus", "--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.retention.time=365d"]

# Expose Prometheus port
EXPOSE 9090
