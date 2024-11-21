FROM grafana/grafana:latest

# Copy the provisioning directory with the dashboards into the container
COPY ./provisioning /etc/grafana/provisioning

# Ensure the dashboards are copied to the right location in Grafana
COPY ./provisioning/dashboards /etc/grafana/provisioning/dashboards

# Expose the default Grafana port
EXPOSE 3000

# Start Grafana
CMD ["/bin/bash", "-c", "/usr/share/grafana/bin/grafana-server web"]



