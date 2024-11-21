FROM grafana/grafana:latest

# Copy the provisioning directory with the dashboards into the container
COPY ./provisioning /etc/grafana/provisioning

# Ensure the dashboards are copied to the right location in Grafana
COPY ./provisioning/dashboards /etc/grafana/provisioning/dashboards

# Ensure proper permissions
RUN chmod -R 755 /etc/grafana/provisioning

# Expose the default Grafana port
EXPOSE 3000

# Start Grafana
CMD ["/bin/bash", "-c", "/usr/share/grafana/bin/grafana-server web"]



