# Use the official Grafana image as a base
FROM grafana/grafana:latest

# Switch to root user to modify permissions
USER root

# Copy the custom grafana.ini configuration file into the container
COPY ./grafana.ini /etc/grafana/grafana.ini

# Copy the provisioning directory
COPY ./provisioning /etc/grafana/provisioning

# Add these debug commands
RUN ls -la /etc/grafana/provisioning/dashboards
RUN cat /etc/grafana/provisioning/dashboards/dashboard1.json
RUN cat /etc/grafana/provisioning/dashboards.yaml

# Ensure the /var/log/grafana directory exists and has correct permissions
RUN mkdir -p /var/log/grafana && chown -R 472:472 /var/log/grafana

# Ensure correct permissions on the provisioning directory
RUN chown -R 472:472 /etc/grafana/provisioning
RUN chown -R 472:472 /etc/grafana

# Switch back to the default Grafana user
USER 472

# Expose the default Grafana port
EXPOSE 3000

# Start Grafana
CMD ["/usr/share/grafana/bin/grafana-server", "web"]