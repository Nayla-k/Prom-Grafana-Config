FROM prom/prometheus:latest

# Copy the Prometheus configuration file
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Use a shell to run Prometheus with the custom arguments
CMD ["/bin/sh", "-c", "/bin/prometheus --config.file=/etc/prometheus/prometheus.yml --storage.tsdb.retention.time=730d --log.level=debug"]

# Expose Prometheus port
EXPOSE 9090
