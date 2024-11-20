# Use the official Prometheus image as the base image
FROM prom/prometheus:latest

# Copy the prometheus.yml configuration file to the container's Prometheus configuration folder
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Expose Prometheus port (default is 9090)
EXPOSE 9090

# Use the official Grafana image as the base image
FROM grafana/grafana:latest

# Copy the Grafana configuration file and provisioning folder into the Grafana container
COPY Grafana/grafana.ini /etc/grafana/grafana.ini
COPY Grafana/provisioning /etc/grafana/provisioning

# Expose Grafana port (default is 3000)
EXPOSE 3000

# Start Prometheus and Grafana in the background
CMD ["/bin/bash", "-c", "prometheus & /bin/bash /etc/grafana/start.sh"]
