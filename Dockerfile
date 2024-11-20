# Stage 1: Build Prometheus
FROM prom/prometheus:latest AS prometheus

# Copy the Prometheus configuration file
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose Prometheus port
EXPOSE 9090

# Stage 2: Build Grafana
FROM grafana/grafana:latest AS grafana

# Copy the Grafana configuration file
COPY grafana/grafana.ini /etc/grafana/grafana.ini
COPY grafana/provisioning /etc/grafana/provisioning

# Expose Grafana port
EXPOSE 3000

# Run both Prometheus and Grafana in a single container
CMD ["/bin/bash", "-c", "prometheus --config.file=/etc/prometheus/prometheus.yml & /bin/bash /etc/grafana/start.sh"]

