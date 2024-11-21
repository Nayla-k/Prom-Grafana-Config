FROM grafana/grafana:latest

# Switch to root user to modify permissions
USER root

# Copy the provisioning directory with the dashboards into the container
COPY ./provisioning /etc/grafana/provisioning

# Ensure that the /etc/grafana/provisioning directory and files inside have the correct permissions
RUN chmod -R 755 /etc/grafana/provisioning

# Switch back to the default Grafana user
USER grafana

# Expose the default Grafana port
EXPOSE 3000

# Start Grafana
CMD ["/bin/bash", "-c", "/usr/share/grafana/bin/grafana-server web"]
