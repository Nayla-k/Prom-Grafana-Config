FROM prom/prometheus:latest

# Copy the Prometheus configuration file
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Set the entrypoint and arguments directly
ENTRYPOINT ["/bin/prometheus"]
CMD ["--config.file=/etc/prometheus/prometheus.yml", "--storage.tsdb.retention.time=730d", "--log.level=debug"]

# Expose Prometheus port
EXPOSE 9090

