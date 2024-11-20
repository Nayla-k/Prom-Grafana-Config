# Use official Grafana and Prometheus images as base images
FROM grafana/grafana:latest

# If you want to add any custom configuration to Grafana, you can copy it here
# COPY ./grafana.ini /etc/grafana/grafana.ini
# COPY ./provisioning /etc/grafana/provisioning

# Expose the ports (Grafana 3000, Prometheus 9090)
EXPOSE 3000 9090

# The default command (Grafana entrypoint)
CMD ["/bin/bash", "-c", "/etc/grafana/grafana-server"]
