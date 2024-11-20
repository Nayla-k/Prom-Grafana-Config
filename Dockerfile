# Stage 1: Build Prometheus
FROM prom/prometheus:latest as prometheus

# Copy Prometheus configuration file
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose Prometheus port
EXPOSE 9090

# Stage 2: Build Grafana
FROM grafana/grafana:latest as grafana

# Copy Grafana configuration and provisioning files from the Grafana directory
COPY Grafana/grafana.ini /etc/grafana/grafana.ini
COPY Grafana/provisioning /etc/grafana/provisioning

# Expose Grafana port
EXPOSE 3000

# Run both Prometheus and Grafana in the same container
CMD ["sh", "-c", "prometheus --config.file=/etc/prometheus/prometheus.yml & grafana-server -config /etc/grafana/grafana.ini"]
