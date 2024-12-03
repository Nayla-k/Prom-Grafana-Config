# Use the official Grafana image as a base
FROM grafana/grafana:latest

# Switch to root user to modify permissions
USER root

# Copy the custom grafana.ini configuration file into the container
COPY ./grafana.ini /etc/grafana/grafana.ini

# Copy the provisioning directory (dashboard provisioning)
COPY ./provisioning /etc/grafana/provisioning

# Ensure the /var/log/grafana directory exists and has correct permissions
RUN mkdir -p /var/log/grafana && chown -R 472:472 /var/log/grafana

# Ensure correct permissions on the provisioning directory
RUN chown -R 472:472 /etc/grafana/provisioning
RUN chown -R 472:472 /etc/grafana

# Expose the default Grafana port
EXPOSE 3000

# Modify grafana.ini to allow iframe embedding
RUN echo "[security]" >> /etc/grafana/grafana.ini && \
    echo "allow_embedding = true" >> /etc/grafana/grafana.ini && \
    echo "[server]" >> /etc/grafana/grafana.ini && \
    echo "root_url = %(protocol)s://your-grafana-instance.onrender.com/" >> /etc/grafana/grafana.ini && \
    echo "serve_from_sub_path = true" >> /etc/grafana/grafana.ini

# If you're using Grafana to embed a specific dashboard, make sure the dashboard is properly provisioned
RUN ls -la /etc/grafana/provisioning/dashboards

# Switch back to the default Grafana user
USER 472

# Start Grafana
CMD ["/usr/share/grafana/bin/grafana-server", "web"]
