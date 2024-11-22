# Use the official Grafana image as a base
FROM grafana/grafana:latest

# Switch to root user to modify permissions
USER root

# Copy the custom grafana.ini configuration file into the container
COPY ./grafana.ini /etc/grafana/grafana.ini

# Copy the provisioning directory (if not already done) with dashboards and datasources
COPY ./provisioning /etc/grafana/provisioning

# Add these debug commands
RUN ls -la /etc/grafana/provisioning/dashboards
RUN cat /etc/grafana/provisioning/dashboards/dashboard1.json
RUN cat /etc/grafana/provisioning/dashboards.yaml
# Ensure the /var/log/grafana directory exists and has correct permissions
RUN mkdir -p /var/log/grafana && chown -R grafana:grafana /var/log/grafana
# Ensure correct permissions on the provisioning directory
RUN chown -R grafana:grafana /etc/grafana/provisioning

# Switch back to the default Grafana user
USER grafana

# Expose the default Grafana port
EXPOSE 3000

# Start Grafana
CMD ["/bin/bash", "-c", "/usr/share/grafana/bin/grafana-server web"]
